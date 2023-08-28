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
        self.benefit = {}

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