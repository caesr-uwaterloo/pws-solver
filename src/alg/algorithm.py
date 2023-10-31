"""
This module defines the parent Algorithm class to represent all split
selection algorithms.
"""

from src.graph import Graph # type: ignore

class Algorithm():
    """
    Baseline parent algorithm class. All other split selection algorithms may
    inherit from this
    """
    def __init__(self, graph: Graph, s: int) -> None:
        self.graph = graph
        self.s = s

    def name(self) -> str:
        """
        Returns the name of the algorithm
        """
        return "Algorithm"

    def solve(self) -> list[int]:
        """
        Return a vector of basic block indices selected as split points
        """
        return [-1]

    def wcet(self, splits: list[int], start: int = 0) -> int:
        """
        Returns the WCET of a kernel given a starting point and a set of
        split points
        """
        idx = start
        w = 0
        while idx < len(self.graph.cfg) - 1:
            w += self.wcet_branch(splits, idx)
            idx = self.graph.next_block_in_sequence(idx)
        return w

    def wcet_branch(self, splits: list[int], start: int = 0) -> int:
        """
        Returns the WCET between a given basic block and its reconvergence
        point basic block
        """
        left = right = weight = 0
        cfg = self.graph.cfg
        bb = cfg[start]
        if not bb.is_branch():
            return bb.wcet
        idx = bb.immediate_successor()
        while idx < bb.bsb \
            and idx != self.graph.next_block_in_sequence(idx):
            assert idx in cfg.keys()
            if cfg[idx].is_branch():
                left += self.wcet_branch(splits, idx)
            else:
                left += cfg[idx].wcet
            idx = self.graph.next_block_in_sequence(idx)
        while idx < bb.reconv \
            and idx != self.graph.next_block_in_sequence(idx):
            assert idx in cfg.keys()
            if cfg[idx].is_branch():
                right += self.wcet_branch(splits, idx)
            else:
                right += cfg[idx].wcet
            idx = self.graph.next_block_in_sequence(idx)

        weight = bb.wcet + cfg[bb.bsb].wcet
        if start in splits: # splitting at this branch
            weight += max(left, right)
        else:
            weight += left + right

        if cfg[bb.reconv].parent == bb.parent \
            and not cfg[bb.reconv].is_branch():
            weight += cfg[bb.reconv].wcet
        return weight
