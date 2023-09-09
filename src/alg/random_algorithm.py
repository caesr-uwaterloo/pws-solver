import numpy as np

from alg.algorithm import *

class RandomAlgorithm(Algorithm):
    def __init__(self, A: Graph, s: int) -> None:
        Algorithm.__init__(self, A, s)

    def solve(self) -> List[int]:
        return np.random.choice(self.A.branch_vertices(), size=self.s)