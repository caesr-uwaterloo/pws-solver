from src.alg.algorithm import *

class NoSplitAlgorithm(Algorithm):
    def __init__(self, A: Graph, s: int) -> None:
        Algorithm.__init__(self, A, s)

    def name(self) -> str:
        return "NoSplitting"

    def solve(self) -> List[int]:
        return []