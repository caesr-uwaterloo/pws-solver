#!/usr/bin/python3

"""\
This module consists of the Graph class to represent the CFG of a GPU kernel.
"""

import matplotlib.pyplot as plt # type: ignore
import networkx as nx # type: ignore

from src.block import BasicBlock # type: ignore

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
        insts: dict[int, str] = {}
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

    def find_branches(self) -> None:
        """
        Set properties of each branching block for use by the split point
        selection algorithms
        """
        parent_stack: list[int] = []
        for u in sorted(self.cfg.keys()):
            bb = self.cfg[u]
            while len(parent_stack) > 0 \
                and u == self.cfg[parent_stack[-1]].reconv:
                parent_stack.pop()
            if len(parent_stack) > 0:
                bb.parent = parent_stack[-1]
            if len(bb.successors()) > 1:
                if not bb.is_bsb():
                    parent_stack.append(u)
                forward_branch_targets = \
                    [v for v in bb.successors() if v > u + 1]
                for v in forward_branch_targets:
                    if self.cfg[v].is_bsb():
                        self.cfg[u].bsb = v
                    if self.cfg[v].is_reconv():
                        if bb.is_bsb():
                            self.cfg[bb.parent].reconv = v
                        else:
                            self.cfg[u].reconv = v

    def number_of_vertices(self) -> int:
        """
        Returns the number of basic blocks in the kernel
        """
        return len(self.cfg)

    def non_branch_vertices(self) -> list[int]:
        """
        Returns all basic blocks that are not branches
        """
        return [bb.num for bb in self.cfg.values() if not bb.is_branch()]

    def branch_vertices(self) -> list[int]:
        """
        Returns all basic blocks that are branches
        """
        return [bb.num for bb in self.cfg.values() if bb.is_branch()]

    def execution_time(self, node: int) -> int:
        """
        Get total WCET of the basic block and its corresponding branch
        serialization and reconvergence blocks, if applicable
        """
        bb = self.cfg[node]
        w = bb.wcet
        if bb.is_branch():
            if bb.bsb != -1:
                w += self.cfg[bb.bsb].wcet
            if not self.cfg[bb.reconv].is_branch():
                w += self.cfg[bb.reconv].wcet
        return w

    def next_block_in_sequence(self, node: int) -> int:
        """
        Return the next basic block that shares a parent with the given
        basic block
        """
        bb = self.cfg[node]
        if bb.is_branch():
            reconv_block = self.cfg[bb.reconv]
            if reconv_block.is_branch():
                return reconv_block.num
            bb = reconv_block
        return bb.immediate_successor()

    def left_children(self, node: int) -> list[int]:
        """
        Return all nodes between the given basic block and its branch
        serialization block. If it doesn't have an else path, all children
        should be absorbed into the left path
        """
        bb = self.cfg[node]
        assert bb.is_branch()
        children = []
        idx = bb.immediate_successor()
        endpoint = bb.bsb if bb.has_else_path() else bb.reconv
        while idx < endpoint:
            children.append(idx)
            idx = self.next_block_in_sequence(idx)
        return children

    def right_children(self, node: int) -> list[int]:
        """
        Return all nodes between the branch serialization block of a given
        basic block and its reconvergence block. If it doesn't have an else
        path, then the right path is empty and we return an empty list
        """
        bb = self.cfg[node]
        assert bb.is_branch()
        children = []
        if bb.has_else_path():
            bsb_block = self.cfg[bb.bsb]
            idx = bsb_block.immediate_successor()
            while idx < bb.reconv:
                children.append(idx)
                idx = self.next_block_in_sequence(idx)
        return children

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
        # TODO: Consider a CSV file instead of a custom file structure
        with open(file_name, 'w', encoding="utf-8") as fo:
            for node in sorted(self.cfg):
                bb = self.cfg[node]
                line = f"{node} {bb.wcet} " \
                    f"{int(bb.is_bsb())} {int(bb.is_reconv())}"
                for target in bb.successors():
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
                bb = self.cfg[data[0]]
                bb.is_a_bsb = bool(data[2])
                bb.is_a_reconv = bool(data[3])
                for dst in data[4:]:
                    self.insert_edge(data[0], dst)
