import itertools
import numpy as np

from alg.algorithm import *

class BruteForceAlgorithm(Algorithm):
    def __init__(self, A: Graph, s: int) -> None:
        Algorithm.__init__(self, A, s)
        self.branches = self.A.branch_vertices()
        self.combo = ()

    def solve(self) -> List[int]:
        n = len(self.branches)
        combos = itertools.product([0, 1], repeat=n)
        min_wcet = np.inf
        min_combo = n * [0]
        for c in combos:
            if c.count(1) >= self.s:
                continue
            self.combo = c
            wcet = self.compute_wcet()
            if wcet < min_wcet:
                min_wcet = wcet
                min_combo = c
          
        splits = []
        for i in range(0, n):
            if min_combo[i]:
                splits.append(self.branches[i])
        return splits
    
    def compute_wcet(self, start: int = 0) -> int:
        left = right = weight = 0
        assert start in self.A.branches
        i = start + 1
        while i < self.A.bsb[start]:
            assert i in self.A.cfg.keys()
            if i != start and i in self.A.branches:
                left += self.compute_wcet(i)
                i = self.A.reconv[i] + 1
            else:
                left += self.A.weight[i]
                i += 1
        i += 1
        while i < self.A.reconv[start]:
            assert i in self.A.cfg.keys()
            if i in self.A.branches:
                right += self.compute_wcet(i)
                i = self.A.reconv[i] + 1
            else:
                right += self.A.weight[i]
                i += 1
        weight = self.A.weight[start] + self.A.weight[self.A.bsb[start]]
        if self.combo[self.A.branches.index(start)]: # splitting at this branch
            weight += max(left, right)
        else: # not splitting at this branch
            weight += left + right
        if self.A.parent[self.A.reconv[start]] == self.A.parent[start]:
            weight += self.A.weight[self.A.reconv[start]]
        return weight