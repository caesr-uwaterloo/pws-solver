from graph import *

class Algorithm():
    def __init__(self, A: Graph, s: int) -> None:
        self.A = A
        self.s = s
        return

    def solve(self) -> List[int]:
        return [-1]

    def wcet(self, start: int = 0, splits: List[int] = []) -> int:
        left = right = weight = 0
        assert start in self.A.branches
        i = start + 1
        while i < self.A.bsb[start]:
            assert i in self.A.cfg.keys()
            if i != start and i in self.A.branches:
                left += self.wcet(i)
                i = self.A.reconv[i] + 1
            else:
                left += self.A.weight[i]
                i += 1
        i += 1
        while i < self.A.reconv[start]:
            assert i in self.A.cfg.keys()
            if i in self.A.branches:
                right += self.wcet(i)
                i = self.A.reconv[i] + 1
            else:
                right += self.A.weight[i]
                i += 1
        weight = self.A.weight[start] + self.A.weight[self.A.bsb[start]]
        if splits[self.A.branches.index(start)]: # splitting at this branch
            weight += max(left, right)
        else: # not splitting at this branch
            weight += left + right
        if self.A.parent[self.A.reconv[start]] == self.A.parent[start]:
            weight += self.A.weight[self.A.reconv[start]]
        return weight