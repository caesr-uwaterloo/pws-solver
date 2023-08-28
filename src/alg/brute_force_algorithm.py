from alg.algorithm import *

class BruteForceAlgorithm(Algorithm):
    def __init__(self, A: Graph, s: int) -> None:
        Algorithm.__init__(self, A, s)

    def solve(self) -> List[int]:
        # for i in range(0, 2**len(self.A.branch_vertices())):
        return [-1]