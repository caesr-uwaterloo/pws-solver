"""
This module contains the random algorithm, which selects split points randomly
"""

import random

from src.alg.algorithm import Algorithm
from src.graph import Graph

class RandomAlgorithm(Algorithm):
    """
    This algorithm selects split points randomly
    """
    def __init__(self, graph: Graph, s: int) -> None:
        Algorithm.__init__(self, graph, s)

    def name(self) -> str:
        return "Random"

    def solve(self) -> list[int]:
        random.seed(0)
        return sorted(random.choices(
            population=self.graph.branch_vertices(),
            k=self.s-1
        ))
