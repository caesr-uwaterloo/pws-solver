from src.alg.algorithm import *

class DWSAlgorithm(Algorithm):
    def __init__(self, A: Graph, s: int) -> None:
        Algorithm.__init__(self, A, s)

    def name(self) -> str:
        return "DWS"

    def solve(self) -> List[int]:
        return sorted(self.A.branch_vertices())[:self.s-1]