import numpy as np

from alg.algorithm import *

class RandomAlgorithm(Algorithm):
    def __init__(self, A: Graph, s: int) -> None:
        Algorithm.__init__(self, A, s)

    def name(self) -> str:
        return "Random"

    def solve(self) -> List[int]:
        np.random.seed(0)
        return sorted(np.random.choice(
            self.A.branch_vertices(),
            size=self.s-1
        ).tolist())