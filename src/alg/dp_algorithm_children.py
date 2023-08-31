from collections import deque

import numpy as np

from alg.algorithm import *

class DPAlgorithm(Algorithm):
    def __init__(self, A: Graph, s: int) -> None:
        Algorithm.__init__(self, A, s)

    def solve(self) -> List[int]:
        self.alloc_tables()
        self.init_tables()
        self.fill_tables()
    
        stack = deque([(0, self.s)])
        splits = []
        while len(stack):
            (u, j) = stack.pop()
            m = self.n[u][j]
            if m[0] + m[1] == j:
                splits.append(u)
            for r in self.A.right_children(u):
                if r in self.A.branch_vertices() and m[1] > 1:
                    stack.append((r, int(m[1])))
            for l in self.A.left_children(u):
                if l in self.A.branch_vertices() and m[0] > 1:
                    stack.append((l, int(m[0])))
        
        return splits
    
    def alloc_tables(self) -> None:
        self.t = np.full(
            shape=(self.A.number_of_vertices(), self.s + 1),
            fill_value=np.inf
        )
        self.n = np.zeros(
            shape=(self.A.number_of_vertices(), self.s + 1, 3)
        )
    
    def init_tables(self) -> None:
        for b_i in self.A.non_branch_vertices():
            for j in range(1, self.s + 1):
                self.t[b_i][j] = self.A.execution_time(b_i)
                self.n[b_i][j] = [0, 0, 0] # is this needed?
        for b_i in sorted(self.A.branch_vertices(), reverse=True):
            self.t[b_i][1] = self.A.execution_time(b_i) \
                                + self.sum_children(b_i, 1, left=True) \
                                + self.sum_children(b_i, 1, left=False)
            self.n[b_i][1] = [1, 1, 1]
    
    def fill_tables(self) -> None:
        for j in range(2, self.s + 1):
            for b_i in sorted(self.A.branch_vertices(), reverse=True):
                m_l = self.A.execution_time(b_i) \
                    + self.sum_children(b_i, j, left=True) \
                    + self.sum_children(b_i, 1, left=False)
                m_r = self.A.execution_time(b_i) \
                    + self.sum_children(b_i, 1, left=True) \
                    + self.sum_children(b_i, j, left=False)
                m = min(m_l, m_r)
                self.n[b_i][j] = [j, 1, j] if m_l < m_r else [1, j, j]
                for d in range(1, j):
                    max_value = max(self.sum_children(b_i, d, left=True), \
                                    self.sum_children(b_i, j-d, left=False))
                    if self.A.execution_time(b_i) + max_value < m:
                        self.t[b_i][j] = self.A.execution_time(b_i) + max_value
                        self.n[b_i][j] = [d, j-d, j]
                        m = self.t[b_i][j]

    def sum_children(self, node: int, num_chunks: int,
                     left: bool = False) -> int:
        sum = 0
        if left:
            for l in self.A.left_children(node):
                sum += self.t[l][num_chunks]
        else:
            for r in self.A.right_children(node):
                sum += self.t[r][num_chunks]
        return sum