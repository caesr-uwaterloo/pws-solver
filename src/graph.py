#!/usr/bin/python3

"""\
This module consists of the Graph class to represent the CFG of a GPU kernel
"""

from __future__ import annotations

import matplotlib.pyplot as plt # type: ignore
import networkx as nx # type: ignore

class BasicBlock():
    """
    A class that represents a basic block in the CFG
    """
    def __init__(self, num: int, wcet: int = 0) -> None:
        self.num: int = num
        self.wcet: int = wcet
        # TODO: Add logic to set parent, bsb, and reconv
        self.parent: int = -1
        self.bsb: int = -1
        self.reconv: int = -1
        self.__successors: set[int] = set()
        self.__insts: dict[int, str] = {}

    def add_instruction(self, pc: int, inst: str) -> None:
        """
        Map an instruction to this basic block
        """
        self.__insts[pc] = inst

    def add_successor(self, bb: int) -> None:
        """
        Map a successor node to this basic block
        """
        self.__successors.add(bb)

    def successors(self) -> list[int]:
        """
        Returns the basic block successor set
        """
        return sorted(self.__successors)

    def instructions(self) -> dict[int, str]:
        """
        Returns the basic block instructions and their PCs
        """
        return self.__insts

    def is_branch(self) -> bool:
        """
        Determine if control-flow can branch out to multiple basic blocks from
        this basic block
        """
        # TODO: Might want to have a more elegant check here
        return self.reconv != -1

class Graph():
    """
    This class represents the control-flow graph of a GPU kernel, including
    information about the connections between basic blocks and their WCETs.
    """
    def __init__(self) -> None:
        self.cfg: dict[int, BasicBlock] = {}
        self.pc_map: dict[int, int] = {}

    def get_insts(self) -> dict[int, str]:
        """
        Get a map of all PCs and their instructions in this kernel. Only really
        needed for debugging purposes
        """
        insts = {}
        for bb in self.cfg.values():
            insts |= bb.instructions()
        return insts

    def insert_basic_block(self, num: int, wcet: int = 0) -> None:
        """
        Add a new basic block to the control-flow graph or update its weight if
        it already exists
        """
        if num not in self.cfg:
            self.cfg[num] = BasicBlock(num, wcet)
        else:
            # Silently update the WCET if already exists
            self.cfg[num].wcet = wcet

    def insert_edge(self, src: int, dst: int) -> None:
        """
        Add a new edge to the control-flow graph from basic block src to dst
        """
        if src not in self.cfg:
            self.insert_basic_block(src)
        if dst not in self.cfg:
            self.insert_basic_block(dst)
        self.cfg[src].add_successor(dst)

    def insert_instruction(self, inst: str, pc: int, bb: int) -> None:
        """
        Add an instruction to the graph
        """
        if pc not in self.pc_map:
            self.pc_map[pc] = bb
        self.cfg[bb].add_instruction(pc, inst)

    def pc_basic_block(self, pc: int) -> int:
        """
        Determine the nearest basic block boundary given a PC
        """
        pcs = sorted(self.pc_map.keys())
        idx = pcs.index(pc)
        if idx < len(self.pc_map) - 1:
            return self.pc_map[pcs[idx + 1]]
        return self.pc_map[pc]

    def plot(self, file_name: str) -> None:
        """
        Plot the CFG using networkx and matplotlib libraries
        """
        plt.close()
        cfg = {}
        for item in self.cfg.items():
            cfg[item[0]] = item[1].successors()

        nx_graph = nx.DiGraph(cfg)

        # Draw nodes and edges
        nx_graph.graph['graph'] = {'rankdir': 'TB'}
        pos = nx.nx_pydot.pydot_layout(nx_graph, prog='dot')
        nx.draw(
            nx_graph,
            pos,
            with_labels=True,
            node_size=500,
            node_color='skyblue',
            font_size=10,
            font_color='black',
            font_weight='bold'
        )

        # Add weight labels
        node_labels = {node: f"{self.cfg[node].wcet}" \
                       for node in list(nx_graph.nodes())[:-1]}
        label_positions = {}
        for node, position in pos.items():
            label_positions[node] = (position[0], position[1] - 50)
        nx.draw_networkx_labels(
            nx_graph,
            label_positions,
            labels=node_labels,
            font_size=10,
            font_color='green',
            font_weight='bold'
        )

        # Display plot
        plt.axis('off')
        plt.savefig(file_name)

    def write_to_file(self, file_name: str) -> None:
        """
        Output the contents of the CFG and the WCETs of each basic block to a
        given file
        """
        with open(file_name, 'w', encoding="utf-8") as fo:
            for node in sorted(self.cfg):
                line = f"{node} {self.cfg[node].wcet}"
                for target in self.cfg[node].successors():
                    line += f" {target}"
                fo.write(f"{line}\n")

    def read_from_file(self, file_name: str) -> None:
        """
        Read the contents of a graph file to construct the CFG
        """
        with open(file_name, encoding="utf-8") as fi:
            for line in fi:
                data = [int(i) for i in line.split()]
                self.insert_basic_block(num=data[0], wcet=data[1])
                for dst in data[2:]:
                    self.insert_edge(data[0], dst)

    # TODO: Add the rest of the helper methods
