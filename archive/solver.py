#!/usr/bin/python3

from typing import Dict, List

import numpy as np

class SplitPointSolver():
    def __init__(self, A: Dict[int, List[int]], B: List[int], e: Dict[int, int],
                 s: int, bsb: Dict[int, int], reconv: Dict[int, int]) -> None:
        self.A = A
        self.B = sorted(B, reverse=True)
        self.e = e
        self.s = s
        self.bsb = bsb
        self.reconv = reconv
    
    def solve(self) -> None:
        self.AllocTables()
        self.InitTables()
        self.FillTables()

    def AllocTables(self) -> None:
        self.t = np.full(shape=(len(self.A), self.s + 1), fill_value=np.inf)
        self.n = np.zeros(shape=(len(self.A), self.s + 1, 2))
    
    def InitTables(self) -> None:
        for b_i in self.A:
            if b_i not in self.B:
                for j in range(1, self.s + 1):
                    self.t[b_i][j] = self.e[b_i]
                    self.n[b_i][j] = [0, 0] # is this needed?
        for b_i in self.B:
            self.t[b_i][1] = self.e[b_i] + self.t[b_i+1][1] \
                                + self.t[self.bsb[b_i]+1][1] #\
                                # + self.t[self.reconv[b_i]][1]
            self.n[b_i][1] = [1,1]
    
    def FillTables(self) -> None:
        for j in range(2, self.s + 1):
            for b_i in self.B:
                m = np.inf
                for d in range(1, j):
                    if self.e[b_i] + max(self.t[b_i+1][d], \
                        self.t[self.bsb[b_i]+1][j-d]) < m:
                        self.t[b_i][j] = self.e[b_i] + max(self.t[b_i+1][d], \
                            self.t[self.bsb[b_i]+1][j-d])
                        self.n[b_i][j] = [d, j-d]
                        m = self.t[b_i][j]
