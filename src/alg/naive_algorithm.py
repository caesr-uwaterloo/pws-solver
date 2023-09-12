from alg.algorithm import *

class NaiveAlgorithm(Algorithm):
    def __init__(self, A: Graph, s: int) -> None:
        Algorithm.__init__(self, A, s)
        self.benefit = {}

    def name(self) -> str:
        return "Naive Algorithm"

    def solve(self) -> List[int]:
        self.compute_benefits(self.A.branch_vertices()[0])
        splits = [m[0] for m in sorted(self.benefit.items(),
                                       key=lambda item: item[1],
                                       reverse=True)]
        return splits[0:self.s-1]

    def compute_benefits(self, start: int = 0) -> int:
        left = right = weight = 0
        assert start in self.A.branches
        i = start + 1
        while i < self.A.bsb[start]:
            assert i in self.A.cfg.keys()
            if i != start and i in self.A.branches:
                left += self.compute_benefits(i)
                i = self.A.reconv[i] + 1
            else:
                left += self.A.weight[i]
                i += 1
        i += 1
        while i < self.A.reconv[start]:
            assert i in self.A.cfg.keys()
            if i in self.A.branches:
                right += self.compute_benefits(i)
                i = self.A.reconv[i] + 1
            else:
                right += self.A.weight[i]
                i += 1
        self.benefit[start] = min(left, right)
        weight = self.A.weight[start] + self.A.weight[self.A.bsb[start]] \
            + left + right
        if self.A.parent[self.A.reconv[start]] == self.A.parent[start]:
            weight += self.A.weight[self.A.reconv[start]]
        return weight