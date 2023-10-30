"""
This module contains the no splitting algorithm, or a representation of the
behaviour of existing COTS GPUs
"""

from src.alg.algorithm import Algorithm # type: ignore
from src.graph import Graph # type: ignore

class NoSplitAlgorithm(Algorithm):
    """
    Selection algorithm that does not select any split points
    """
    def __init__(self, A: Graph, s: int) -> None:
        Algorithm.__init__(self, A, s)

    def name(self) -> str:
        return "No Splitting"

    def solve(self) -> list[int]:
        return []
