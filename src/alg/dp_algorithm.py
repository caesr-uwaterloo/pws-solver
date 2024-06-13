#!/usr/bin/python3

"""
This module contains the dynamic programming algorithm which determines the
best split points
"""

from collections import deque

import numpy as np

from src.alg.algorithm import Algorithm
from src.graph import Graph

class DPAlgorithm(Algorithm):
    """
    This dynamic programming algorithm computes the optimal split points bottom
    up
    """
    def __init__(self, graph: Graph, s: int) -> None:
        Algorithm.__init__(self, graph, s)

        # alloc_tables
        self.t = np.full(
            shape=(self.graph.number_of_vertices(), self.s + 1),
            fill_value=np.inf
        )
        self.n: np.ndarray = np.zeros(
            shape=(self.graph.number_of_vertices(), self.s + 1, 3)
        )

        # init_tables
        for b_i in self.graph.non_branch_vertices():
            for j in range(1, self.s + 1):
                self.t[b_i][j] = self.graph.execution_time(b_i)
                self.n[b_i][j] = [0, 0, 0] # TODO: is this needed?
        for b_i in sorted(self.graph.branch_vertices(), reverse=True):
            self.t[b_i][1] = self.graph.execution_time(b_i) \
                                + self.sum_children(b_i, 1, left=True) \
                                + self.sum_children(b_i, 1, left=False)
            self.n[b_i][1] = [1, 1, 1]

    def name(self) -> str:
        return "DP"

    def solve(self) -> list[int]:
        # fill_tables
        for j in range(2, self.s + 1):
            for b_i in sorted(self.graph.branch_vertices(), reverse=True):
                self.t[b_i][j] = self.graph.execution_time(b_i) \
                    + self.sum_children(b_i, j, left=True) \
                    + self.sum_children(b_i, j, left=False)
                self.n[b_i][j] = [j, j, j]
                for d in range(1, j):
                    max_value = max(self.sum_children(b_i, d, left=True), \
                                    self.sum_children(b_i, j-d, left=False))
                    candidate_wcet = self.graph.execution_time(b_i) + max_value
                    if candidate_wcet < self.t[b_i][j]:
                        self.t[b_i][j] = self.graph.execution_time(b_i) \
                            + max_value
                        self.n[b_i][j] = [d, j-d, j]

        # We proceed through the CFG top down and use the tables to determine
        # the optimal split points
        splits = []
        stack = deque([(0, self.s)])
        outer_node = 0
        while len(stack):
            (u, j) = stack.pop()
            entry = self.n[u][j]
            if entry[0] + entry[1] == j:
                splits.append(u)
            for r in self.graph.right_children(u):
                if r in self.graph.branch_vertices() and entry[1] > 1:
                    stack.append((r, int(entry[1])))
            for l in self.graph.left_children(u):
                if l in self.graph.branch_vertices() and entry[0] > 1:
                    stack.append((l, int(entry[0])))
            if len(stack) == 0:
                (is_branch, outer_node) = \
                    self.graph.next_branch_in_sequence(outer_node)
                if is_branch:
                    stack.append((outer_node, self.s))

        return sorted(splits)

    def sum_children(self, node: int, num_chunks: int,
                     left: bool = False) -> int:
        """
        Get the sum of the t array for all children in the left or right path
        """
        assert node in self.graph.branch_vertices()
        total = 0
        if left:
            for l in self.graph.left_children(node):
                total += self.t[l][num_chunks]
        else:
            for r in self.graph.right_children(node):
                total += self.t[r][num_chunks]
        return total
