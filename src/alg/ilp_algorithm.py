#!/usr/bin/python3

"""
This module formulates the objective as an integer linear programming (ILP)
problem and passes the formulation through an ILP solver
"""

import subprocess
from shutil import which

from src.alg.algorithm import Algorithm
from src.graph import Graph

class ILPAlgorithm(Algorithm):
    def __init__(self, graph: Graph, s: int) -> None:
        super().__init__(graph, s)
        self.ilp = self.generate_ilp()
        # TODO: Make the benchmark name a parameter
        with open("data/temp.lp", 'w+', encoding="utf-8") as fo:
            fo.write(self.ilp)

    def name(self) -> str:
        return "ILP"
    
    def solve(self) -> list[int]:
        if which("gurobi_cl"):
            subprocess.run([
                "gurobi_cl",
                "ResultFile=data/temp.sol",
                "data/temp.lp"
            ])
        return super().solve()
    
    def generate_ilp(self) -> str:
        ilp_str = \
            f"Minimize multi-objectives\n" \
            f"    OBJ1: Priority = 1 Weight = 1 AbsTol=0 RelTol=0\n" \
            f"        t0\n" \
            f"    OBJ2: Priority = 0 Weight = 1 AbsTol=0 RelTol=0\n" \
            f"        s\n" \
            f"subject to\n" \
            f"    s <= {self.s}\n" \
            f"    u0 - s <= 0\n"
        
        # constraints for each node in CFG
        for idx, bb in self.graph.cfg.items():
            if bb.is_branch():
                # (a) ui <= u(parenti)
                if idx > 0:
                    ilp_str += f"    u{idx} - u{bb.parent} <= 0\n"
                # else idx == 0 --- already addressed above outside for loop

                # (b) ui >= 1
                ilp_str += f"    u{idx} >= 1\n"

                # (c) ui = 1 ==> bi = 0
                ilp_str += f"    u{idx} - b{idx} >= 1\n"

                # (d) bi = 1 ==> ui = max{u(li)} + max{u(ri)}
                #     bi = 0 ==> ui = max{u(li), u(ri)}
                li = self.graph.left_children(idx)
                ri = self.graph.right_children(idx)
                for j in li:
                    ilp_str += f"    maxul{idx} - u{j} >= 0\n"
                for j in ri:
                    ilp_str += f"    maxur{idx} - u{j} >= 0\n"

                ilp_str += \
                    f"    u{idx}split - maxul{idx} - maxur{idx} = 0\n" \
                    f"    u{idx}dontsplit - maxul{idx} >= 0\n" \
                    f"    u{idx}dontsplit - maxur{idx} >= 0\n" \
                    f"    u{idx} - [ b{idx} * u{idx}split ] - " \
                        f"u{idx}dontsplit + [ b{idx} * u{idx}dontsplit ] = 0\n"
                
                # (e) bi = 1 ==> ti = ei + max{t(li), t(ri)}
                #     bi = 0 ==> ti = ei + t(li) + t(ri)
                ilp_str += f"    t{idx}split"
                for j in li:
                    ilp_str += f" - t{j}"
                if bb.is_branch():
                    ilp_str += f" - t{bb.reconv}"
                ilp_str += " >= 0\n"

                ilp_str += f"    t{idx}split"
                for j in ri:
                    ilp_str += f" - t{j}"
                if bb.is_branch():
                    ilp_str += f" - t{bb.reconv}"
                ilp_str += " >= 0\n"

                ilp_str += f"    t{idx}dontsplit"
                for j in li:
                    ilp_str += f" - t{j}"
                for j in ri:
                    ilp_str += f" - t{j}"
                if bb.is_branch():
                    ilp_str += f" - t{bb.reconv}"
                ilp_str += " = 0\n"

                ilp_str += \
                    f"    t{idx} - [ b{idx} * t{idx}split ] + " \
                        f"[ b{idx} * t{idx}dontsplit ] - " \
                        f"t{idx}dontsplit = {bb.wcet}\n"
            else:
                ilp_str += \
                    f"    u{idx} = 1\n" \
                    f"    b{idx} = 0\n" \
                    f"    t{idx} = {bb.wcet}\n"
        ilp_str += "Integers\n    s"
        for idx, bb in self.graph.cfg.items():
            ilp_str += f" u{idx} t{idx}"
            if bb.is_branch():
                ilp_str += f" u{idx}split"
                ilp_str += f" t{idx}split"
                ilp_str += f" u{idx}dontsplit"
                ilp_str += f" t{idx}split"
                ilp_str += f" maxul{idx}"
                ilp_str += f" maxur{idx}"
        ilp_str += "\nbinary\n   "
        for idx in self.graph.cfg.keys():
            ilp_str += f" b{idx}"
        ilp_str += "\n"

        return ilp_str