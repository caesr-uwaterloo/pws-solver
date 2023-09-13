from graph import *

class Algorithm():
    def __init__(self, A: Graph, s: int) -> None:
        self.A = A
        self.s = s
        return

    def name(self) -> str:
        return "Algorithm"

    def solve(self) -> List[int]:
        return [-1]
    
    # TODO: Find a more elegant way to look at reuse in the outermost branch
    def wcet_outer(self, start: int = 0, splits: List[int] = []) -> int:
        i = start
        wcet_out = 0
        while True:
            wcet_out += self.wcet(i, splits)
            i = self.A.next_branch(self.A.reconv[i])
            if i == 0:
                break
        return wcet_out

    def wcet(self, start: int = 0, splits: List[int] = []) -> int:
        left = right = weight = 0
        assert start in self.A.branches
        i = start + 1
        while i < self.A.bsb[start]:
            assert i in self.A.cfg.keys()
            if i != start and i in self.A.branches:
                left += self.wcet(i, splits)
                i = self.A.reconv[i]
            else:
                left += self.A.weight[i]
                i += 1
        i += 1
        while i < self.A.reconv[start]:
            assert i in self.A.cfg.keys()
            if i in self.A.branches:
                right += self.wcet(i, splits)
                i = self.A.reconv[i]
            else:
                right += self.A.weight[i]
                i += 1
        weight = self.A.weight[start] + self.A.weight[self.A.bsb[start]]
        if start in splits: # splitting at this branch
            weight += max(left, right)
        else: # not splitting at this branch
            weight += left + right
        if self.A.parent[self.A.reconv[start]] == self.A.parent[start] \
            and self.A.reconv[start] not in self.A.branch_vertices():
            weight += self.A.weight[self.A.reconv[start]]
        return weight