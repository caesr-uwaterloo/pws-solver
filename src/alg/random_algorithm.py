"""
This module contains the random algorithm, which selects split points randomly
"""

import numpy as np

from src.alg.algorithm import Algorithm # type: ignore
from src.graph import Graph # type: ignore

class RandomAlgorithm(Algorithm):
    """
    This algorithm selects split points randomly
    """
    def __init__(self, graph: Graph, s: int) -> None:
        Algorithm.__init__(self, graph, s)

    def name(self) -> str:
        return "Random"

    def solve(self) -> list[int]:
        np.random.seed(0)
        return sorted(np.random.choice(
            self.graph.branch_vertices(),
            size=self.s-1
        ).tolist())
