"""
This module contains the DWS algorithm, which selects split points greedily
"""

from src.alg.algorithm import Algorithm # type: ignore
from src.graph import Graph # type: ignore

class DWSAlgorithm(Algorithm):
    """
    This algorithm greedily selects the first s branches as split points, which
    we use as an approximate DWS implementation
    """
    def __init__(self, graph: Graph, s: int) -> None:
        Algorithm.__init__(self, graph, s)

    def name(self) -> str:
        return "DWS"

    def solve(self) -> list[int]:
        return sorted(self.graph.branch_vertices())[:self.s-1]
