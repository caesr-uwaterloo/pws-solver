import numpy as np

from alg.algorithm import *

class DPAlgorithm(Algorithm):
    def __init__(self, A: Graph, s: int) -> None:
        Algorithm.__init__(self, A, s)

    def solve(self) -> None:
        self.alloc_tables()
        self.init_tables()
        self.fill_tables()
    
    def alloc_tables(self) -> None:
        self.t = np.full(shape=(len(self.A), self.s + 1), fill_value=np.inf)
        self.n = np.zeros(shape=(len(self.A), self.s + 1, 2))
    
    def init_tables(self) -> None:
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
    
    def fill_tables(self) -> None:
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