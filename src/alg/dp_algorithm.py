import numpy as np

from alg.algorithm import *

class DPAlgorithm(Algorithm):
    def __init__(self, A: Graph, s: int) -> None:
        Algorithm.__init__(self, A, s)

    def solve(self) -> List[int]:
        self.alloc_tables()
        self.init_tables()
        self.fill_tables()
        
        # TODO: Return the list of branches selected as split points
        return [-1]
    
    def alloc_tables(self) -> None:
        self.t = np.full(
            shape=(self.A.number_of_vertices(), self.s + 1),
            fill_value=np.inf
        )
        self.n = np.zeros(
            shape=(self.A.number_of_vertices(), self.s + 1, 2)
        )
    
    def init_tables(self) -> None:
        for b_i in self.A.non_branch_vertices():
            for j in range(1, self.s + 1):
                self.t[b_i][j] = self.A.execution_time(b_i)
                self.n[b_i][j] = [0, 0] # is this needed?
        for b_i in sorted(self.A.branch_vertices(), reverse=True):
            self.t[b_i][1] = self.A.execution_time(b_i) \
                                + self.t[self.A.left_child(b_i)][1] \
                                + self.t[self.A.right_child(b_i)][1]
            self.n[b_i][1] = [1, 1]
    
    def fill_tables(self) -> None:
        for j in range(2, self.s + 1):
            for b_i in sorted(self.A.branch_vertices(), reverse=True):
                m_l = self.A.execution_time(b_i) \
                    + self.t[self.A.left_child(b_i)][j] \
                    + self.t[self.A.right_child(b_i)][1]
                m_r = self.A.execution_time(b_i) \
                    + self.t[self.A.left_child(b_i)][1] \
                    + self.t[self.A.right_child(b_i)][j]
                m = min(m_l, m_r)
                self.n[b_i][j] = [j, 1] if m_l < m_r else [1, j]
                for d in range(1, j):
                    max_value = max(self.t[self.A.left_child(b_i)][d], \
                                    self.t[self.A.right_child(b_i)][j-d])
                    if self.A.execution_time(b_i) + max_value < m:
                        self.t[b_i][j] = self.A.execution_time(b_i) + max_value
                        self.n[b_i][j] = [d, j-d]
                        m = self.t[b_i][j]