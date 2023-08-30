from typing import Dict, List

class Graph():
    def __init__(self, cfg: Dict[int, List[int]], weights: Dict[int, int]) -> None:
        self.cfg = cfg
        self.branches = []
        self.bsb = {}
        self.reconv = {}
        self.parent = {}
        parent_stack = [-1]
        assert len(weights) == len(cfg)
        self.weight = weights

        for node in sorted(self.cfg):
            while len(parent_stack) > 1 \
                and node == self.reconv[parent_stack[-1]]:
                parent_stack.pop()
            self.parent[node] = parent_stack[-1]

            non_loop_successors = \
                list(filter(lambda x: (x != node), cfg[node]))
            if len(non_loop_successors) > 1 \
                and node not in self.bsb.values():
                assert len(non_loop_successors) == 2
                self.branches.append(node)
                parent_stack.append(node)
                self.bsb[node] = sorted(cfg[node])[-1]
                self.reconv[node] = sorted(cfg[self.bsb[node]])[-1]

    def number_of_vertices(self) -> int:
        return len(self.cfg)
    
    def non_branch_vertices(self) -> List[int]:
        return [v for v in self.cfg if v not in self.branches]
    
    def branch_vertices(self) -> List[int]:
        return self.branches
    
    def execution_time(self, node: int) -> int:
        w = self.weight[node]
        if node in self.branches:
            w += self.weight[self.bsb[node]] + self.weight[self.reconv[node]]
        return w
    
    def left_child(self, node: int) -> int:
        assert node in self.branches
        return node + 1
    
    def right_child(self, node: int) -> int:
        assert node in self.branches
        return self.bsb[node] + 1
    
    def left_children(self, node: int) -> List[int]:
        assert node in self.branches
        children = []
        i = node + 1
        while i + 1 < self.bsb[node]:
            children.append(i)
            i = self.reconv[i]
        return children
    
    def right_children(self, node: int) -> List[int]:
        assert node in self.branches
        children = []
        i = self.bsb[node] + 1
        while i + 1 < self.reconv[node]:
            children.append(i)
            i = self.reconv[i]
        return children