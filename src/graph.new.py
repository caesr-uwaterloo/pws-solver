#!/usr/bin/python3

"""\
This module consists of the Graph class to represent the CFG of a GPU kernel
"""

from __future__ import annotations

from typing import Dict, List
import matplotlib.pyplot as plt
import networkx as nx

class BasicBlock():
    """
    A class that represents a basic block in the CFG
    """
    def __init__(self, num: int, wcet: int = 0) -> None:
        self.num: int = num
        self.wcet: int = wcet
        self.__successors: set[BasicBlock] = set()
        self.__insts: dict[int, str] = {}

    def add_instruction(self, pc: int, inst: str) -> None:
        """
        Map an instruction to this basic block
        """
        self.__insts[pc] = inst

    def add_successor(self, bb: BasicBlock) -> None:
        """
        Map a successor node to this basic block
        """
        self.__successors.add(bb)

class Graph():
    """
    This class represents the control-flow graph of a GPU kernel, including
    information about the connections between basic blocks and their WCETs.
    """
    # def __init__(
    #         self,
    #         cfg: Dict[int, set[int]],
    #         wcets: Dict[int, int]
    #     ) -> None:
    #     self.wcet: dict[int, int] = {}
    #     self.__cfg: dict[int, set[int]] = {}
    #     self.cfg = cfg
    #     self.branches = []
    #     self.bsb = {}
    #     self.reconv = {}
    #     self.parent = {}
    #     self.kernel: dict[int, str] = {}
    #     assert len(wcets) == len(cfg)
    #     self.weight = wcets

    def __init__(self) -> None:
        self.wcet: dict[int, int] = {}
        self.__cfg: dict[int, set[int]] = {}
        self.kernel: dict[int, str] = {}

    def insert_basic_block(self, num: int, wcet: int = 0) -> None:
        """
        Add a new basic block to the control-flow graph or update its weight if
        it already exists
        """
        assert num not in self.__cfg
        self.__cfg[num] = set()
        self.wcet[num] = wcet

    def insert_edge(self, src: int, dst: int) -> None:
        """
        Add a new edge to the control-flow graph from basic block src to dst
        """
        assert src in self.__cfg
        assert dst in self.__cfg
        self.cfg[src].add(dst)

    def insert_instruction(self, inst: str, pc: int) -> None:
        """
        Add an instruction to the graph
        """
        if pc not in self.kernel:
            self.kernel[pc] = inst

    # def find_branches(self) -> None:
    #     parent_stack = [-1]
    #     for node in sorted(self.cfg):
    #         while len(parent_stack) > 1 \
    #             and node == self.reconv[parent_stack[-1]]:
    #             parent_stack.pop()
    #         self.parent[node] = parent_stack[-1]

    #         non_loop_successors = \
    #             list(filter(lambda x: (x != node), self.cfg[node]))
    #         if len(non_loop_successors) > 1 \
    #             and node not in self.bsb.values():
    #             # assert len(non_loop_successors) == 2
    #             self.branches.append(node)
    #             parent_stack.append(node)
    #             self.bsb[node] = sorted(self.cfg[node])[-1]
    #             self.reconv[node] = sorted(self.cfg[self.bsb[node]])[-1]
    #             # Workaround for branches that don't have an else
    #             if len(self.cfg[self.bsb[node]]) == 1:
    #                 self.reconv[node] = self.bsb[node]
    #             assert self.reconv[node] > node
    #             assert self.bsb[node] > node

    # def number_of_vertices(self) -> int:
    #     return len(self.cfg)

    # def non_branch_vertices(self) -> List[int]:
    #     return [v for v in self.cfg if v not in self.branches]

    # def branch_vertices(self) -> List[int]:
    #     return self.branches

    # def execution_time(self, node: int) -> int:
    #     w = self.weight[node]
    #     if node in self.branches:
    #         w += self.weight[self.bsb[node]]
    #         if self.reconv[node] not in self.branches:
    #             w += self.weight[self.reconv[node]]
    #     return w

    # def left_child(self, node: int) -> int:
    #     assert node in self.branches
    #     return node + 1

    # def right_child(self, node: int) -> int:
    #     assert node in self.branches
    #     return self.bsb[node] + 1

    # def next_branch(self, node: int) -> int:
    #     for b_i in sorted(self.branches):
    #         if b_i >= node:
    #             return b_i
    #     return 0

    # def left_children(self, node: int) -> List[int]:
    #     assert node in self.branches
    #     i = node + 1
    #     if i not in self.branches:
    #         return [i, i+1] # FIXME: make this more dynamic
    #     children = []
    #     while self.next_branch(i) and i < self.bsb[node]:
    #         children.append(i)
    #         i = self.next_branch(self.reconv[i])
    #     return children

    # def right_children(self, node: int) -> List[int]:
    #     assert node in self.branches
    #     i = self.bsb[node] + 1
    #     if i not in self.branches:
    #         return [i, i+1] # FIXME: make this more dynamic
    #     children = []
    #     while self.next_branch(i) and i < self.reconv[node]:
    #         children.append(i)
    #         i = self.next_branch(self.reconv[i])
    #     return children

    def plot(self, file_name: str) -> None:
        """
        Plot the CFG using networkx and matplotlib libraries
        """
        nx_graph = nx.DiGraph(self.cfg)

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
        node_labels = {node: f"{self.weight[node]}" \
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
