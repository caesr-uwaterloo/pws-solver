from typing import List
from solver import *

import argparse
import matplotlib
import matplotlib.pyplot as plt
import networkx as nx
import numpy as np
import re

# backend to support writing to a file
matplotlib.use('Agg')

class Graph():
    def __init__(self, cfg, weights) -> None:
        np.random.seed(0)
        self.cfg = cfg
        self.branches = []
        self.bsb = {}
        self.reconv = {}
        self.parent = {}
        parent_stack = [-1]
        assert len(weights) == len(cfg)
        self.weight = weights
        self.benefit = {}

        for node in sorted(self.cfg):
            while len(parent_stack) > 1 \
                and node == self.reconv[parent_stack[-1]]:
                parent_stack.pop()
            self.parent[node] = parent_stack[-1]
            # self.weight[node] = np.random.randint(1, 10)

            non_loop_successors = \
                list(filter(lambda x: (x != node), cfg[node]))
            if len(non_loop_successors) > 1 \
                and node not in self.bsb.values():
                assert len(non_loop_successors) == 2
                self.branches.append(node)
                parent_stack.append(node)
                self.bsb[node] = sorted(cfg[node])[-1]
                self.reconv[node] = sorted(cfg[self.bsb[node]])[-1]

    def has_cycle(self, g: nx.DiGraph) -> bool:
        return not nx.algorithms.dag.is_directed_acyclic_graph(g)

    def draw(self, outfile: str = "cfg.png") -> None:
        g = nx.DiGraph(self.cfg)
        pos = nx.planar_layout(g)
        nx.draw(g, pos, with_labels=True, font_weight='bold')
        plt.savefig(outfile, format="PNG")
        plt.close()

    def print(self) -> None:
        for node in sorted(self.cfg):
            print(f"  {node:{' '}>3} [{self.weight[node]}] -> ", end='')
            for target in self.cfg[node]:
                print(f"({target}) ", end='')
            print()
        for branch in self.branches:
            print(f"{branch}, "
                    f"BSB={self.bsb[branch]}, "
                    f"Reconv={self.reconv[branch]}, "
                    f"Parent={self.parent[branch]}")

    def compute_benefits(self, start: int = 0) -> int:
        left = right = weight = 0
        assert start in self.branches
        i = start + 1
        while i < self.bsb[start]:
            assert i in self.cfg.keys()
            if i != start and i in self.branches:
                left += self.compute_benefits(i)
                i = self.reconv[i] + 1
            else:
                left += self.weight[i]
                i += 1
        i += 1
        while i < self.reconv[start]:
            assert i in self.cfg.keys()
            if i in self.branches:
                right += self.compute_benefits(i)
                i = self.reconv[i] + 1
            else:
                right += self.weight[i]
                i += 1
        self.benefit[start] = min(left, right)
        weight = self.weight[start] + self.weight[self.bsb[start]] \
            + left + right
        if self.parent[self.reconv[start]] == self.parent[start]:
            weight += self.weight[self.reconv[start]]
        return weight

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument(
            "-i",
            "--input",
            help="Input GCN3 assembly file",
            type=str
        )
    parser.add_argument(
            "-l",
            "--log",
            help="Input gem5 log file",
            type=str
        )
    args = parser.parse_args()


    lines = []
    with open(args.log) as f:
        lines = f.readlines()

    insts = {}
    pcs = {}
    edges = {}
    first_pc = -1
    for line in lines:
        # Extract pc and inst from line, e.g.
        # 
        # 78278037000: system.cpu3.CUs0.wavefronts00: CU0: WF[0][0]: wave[0]
        # Executing inst: s_and_b32 s0, s6, 1 (pc: 0x7fff5e780000; seqNum: 1)
        # 
        # Subtract starting PC to get relative address
        if "Executing inst" in line:
            pc = int(line.partition("pc: 0x")[2].partition(';')[0], 16)
            if first_pc == -1:
                first_pc = pc
            pc = pc - first_pc
            inst = line.partition("Executing inst: ")[2].partition(' ')[0]
            assert inst.startswith("s_") or inst.startswith("v_") or inst.startswith("flat_")
            insts[pc] = inst
        if "EDGE" in line:
            values = line.split('|')
            if int(values[1].strip(), 16) == 0:
                continue
            start = int(values[1].strip(), 16) - first_pc
            end = int(values[2].strip(), 16) - first_pc
            latency = int(values[3].strip())
            
            if start not in edges:
                edges[start] = {}
            edges[start][end] = latency
    
    for pc in insts:
        print(f"0x{pc:03x} {insts[pc]}")

    bb = {}
    pc_bbs = {}
    lines = []
    with open(args.input) as f:
        lines = f.readlines()

    cfgs = []
    cfg = {}

    skip = True # skip extra lines before BB0 and after s_endpgm
    block = 0
    inst_idx = 0
    pcs = sorted(insts.keys())
    branch_insts = ["s_cbranch", "s_branch"]
    branch = False

    for line in lines:
        if "; %bb.0:" in line:
            bb[0] = []
            cfg[0] = []
            skip = False
            continue
        if skip:
            continue
        if line.lstrip().startswith("s_") or line.lstrip().startswith("v_") or line.lstrip().startswith("flat_"):
            bb[block].append(pcs[inst_idx])
            pc_bbs[pcs[inst_idx]] = block
            inst_idx += 1
        if any(inst in line for inst in branch_insts):
        # If we encounter a cbranch
        # If the target doesn't exist, add the node
        # Connect current node to branch target
            target = int(re.findall(r'\d+', line.split()[1])[1])
            if target not in cfg.keys():
                cfg[target] = []
                bb[target] = []
            cfg[block].append(target)
            if "s_branch" in line:
                branch = True
        elif "BB" in line or "bb" in line:
        # If we encounter a BB, create a new node
        # If the current node is another BB, create a direct link from the previous one
        # Set the new node as the current BB
            numbering_index = 1
            if line.lstrip().startswith(';'):
                numbering_index = 0

            line_nums = re.findall(r'\d+', line)

            target = int(line_nums[numbering_index])

            first_node = len(cfg) == 0

            if target not in cfg.keys():
                cfg[target] = []
                bb[target] = []

            if not first_node and not branch:
                cfg[block].append(target)
            branch = False
            block = target
            instructions = 0
        elif "s_endpgm" in line:
        # An endpgm instruction ends the kernel
            target = block + 1
            cfg[block].append(target)
            block = 0
            target = 0
            cfgs.append(cfg)
            cfg = []
            skip = True

    for b in sorted(bb.keys()):
        print(f"BB{b}({len(bb[b])}) :", end=' ')
        for pc in bb[b]:
            print(f"0x{pc:03x}", end=' ')
        print("")

    def next_pc(pc: int, pcs: List[int]) -> int:
        if pcs.index(pc) == len(pcs)-1:
            return 0
        return pcs[pcs.index(pc) + 1]
    
    def prev_pc(pc: int, pcs: List[int]) -> int:
        if pcs.index(pc) == 0:
            return len(pcs)-1
        return pcs[pcs.index(pc) - 1]

    weights = dict.fromkeys(bb, 0)
    print(weights)
    for u in sorted(edges.keys()):
        for v in sorted(edges[u].keys()):
            print(f"0x{u:03x} -> 0x{v:03x} : {edges[u][v]}")
            assert u in pc_bbs and v in pc_bbs
            bb_u = pc_bbs[u] if pc_bbs[next_pc(u, pcs)] == pc_bbs[u] else pc_bbs[next_pc(u, pcs)]
            bb_v = pc_bbs[v] if pc_bbs[next_pc(v, pcs)] == pc_bbs[v] else pc_bbs[next_pc(v, pcs)]
            print(f"{bb_u}->{bb_v} : {edges[u][v]}")
            if bb_u == bb_v: # loop
                weights[bb_u] += (edges[u][v] * 36)
                print(f"weights[{bb_u}]{weights[bb_u]}")
            else:
                weights[bb_u] += edges[u][v]


    for w in weights:
        print(f"{w} : {weights[w]}")


    g = Graph(cfgs[0], weights)
    g.draw()
    g.print()


    assert sum(g.weight.values()) == g.compute_benefits()
    for benefit in sorted(g.benefit.items(), key=lambda x: x[1], reverse=True):
        print(benefit)

    s = SplitPointSolver(cfgs[0], g.branches, g.weight, 3, g.bsb, g.reconv)
    s.solve()
    for b_i in s.B:
        print(b_i)
        print(s.t[b_i])
        for j in s.n[b_i]:
            print(j)