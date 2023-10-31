"""
This module contains the brute force algorithm which computes the WCET for
each combination of split points and selects the lowest one
"""

import itertools
import numpy as np

from src.alg.algorithm import Algorithm
from src.graph import Graph

class BruteForceAlgorithm(Algorithm):
    """
    Performs a brute force selection of the split points
    """
    def __init__(self, graph: Graph, s: int) -> None:
        Algorithm.__init__(self, graph, s)
        self.branches = self.graph.branch_vertices()

    def name(self) -> str:
        return "Brute Force"

    def solve(self) -> list[int]:
        n = len(self.branches)
        combos = itertools.product([0, 1], repeat=n)
        min_wcet = np.inf
        min_combo = []
        for c in combos:
            if c.count(1) >= self.s:
                continue
            splits = []
            for i in range(0, n):
                if c[i]:
                    splits.append(self.branches[i])
            wcet = self.wcet(splits=splits, start=0)
            if wcet < min_wcet:
                min_wcet = wcet
                min_combo = splits
        return min_combo
