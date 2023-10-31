"""
This module contains the naive algorithm which ranks each branch individually
by the benefit they receive from splitting
"""

from src.alg.algorithm import Algorithm
from src.graph import Graph

class NaiveAlgorithm(Algorithm):
    """
    This naive algorithm computes the benefit of splitting at each branch and
    returns the best choices, not accounting for any hardware reuse
    """
    def __init__(self, graph: Graph, s: int) -> None:
        Algorithm.__init__(self, graph, s)

    def name(self) -> str:
        return "Naive"

    def solve(self) -> list[int]:
        start = self.graph.branch_vertices()[0]
        self.wcet(splits=[], start=start)
        splits = [m[0] for m in sorted(self.benefit.items(),
                                       key=lambda item: item[1],
                                       reverse=True)]
        return splits[0:self.s-1]
