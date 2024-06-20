#!/usr/bin/python3

"""
This module contains the DWS algorithm, which selects split points greedily
"""

from src.alg.algorithm import Algorithm
from src.graph import Graph

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
        branches = self.graph.branch_vertices()
        if len(branches) == 0:
            return []

        return sorted(self.graph.branch_vertices())[:self.s-1]
