#!/usr/bin/python3

"""\
This module consists of the Graph class to represent the CFG of a GPU kernel.
"""

import re

import matplotlib.pyplot as plt # type: ignore
import networkx as nx # type: ignore
import pandas as pd # type: ignore

from src.block import BasicBlock
from src import pattern

class Graph():
    """
    This class represents the control-flow graph of a GPU kernel, including
    information about the connections between basic blocks and their WCETs.
    """
    def __init__(self) -> None:
        self.cfg: dict[int, BasicBlock] = {}
        self.pc_map: dict[int, int] = {}
        # TODO: Add a loop bound map

    # TODO: Add a loop unroll utility
    # TODO: Add a utility to check for cycles

    def get_insts(self) -> dict[int, str]:
        """
        Get a map of all PCs and their instructions in this kernel
        """
        insts: dict[int, str] = {}
        for bb in self.cfg.values():
            insts |= bb.instructions()
        return insts

    def get_instruction(self, pc: int) -> str:
        """
        Given a PC, returns the instruction string
        """
        bb_idx = self.pc_map[pc]
        bb = self.cfg[bb_idx]
        insts = bb.instructions()
        return insts[pc]


    def insert_basic_block(self, num: int, wcet: int = 0) -> None:
        """
        Add a new basic block to the control-flow graph or update its weight if
        it already exists
        """
        if num not in self.cfg:
            self.cfg[num] = BasicBlock(num, wcet)
        else:
            # Silently update the WCET if already exists
            self.cfg[num].wcet = wcet

    def insert_edge(self, src: int, dst: int) -> None:
        """
        Add a new edge to the control-flow graph from basic block src to dst
        """
        # assert src < dst
        if src not in self.cfg:
            self.insert_basic_block(src)
        if dst not in self.cfg:
            self.insert_basic_block(dst)
        self.cfg[src].add_successor(dst)

    def insert_instruction(self, inst: str, pc: int, bb: int) -> None:
        """
        Add an instruction to the graph
        """
        if pc not in self.pc_map:
            self.pc_map[pc] = bb
        self.cfg[bb].add_instruction(pc, inst)

    def update_latency(
        self,
        start_pc: int,
        end_pc: int,
        latency: int
    ) -> None:
        """
        Given a start PC, end PC, and latency between the two PCs, determines
        an appropriate basic block between these two points and updates the
        latency for the basic block if it is the largest seen so far.
        """
        assert start_pc in self.pc_map
        assert end_pc in self.pc_map

        # FIXME: This actually doesn't cover all cases that we
        # want, need to find a way to capture everything
        # (inserting raw assembly generates a new basic block
        # that is undetected by IPTs)
        bb_idx = self.choose_basic_block(start_pc=start_pc, end_pc=end_pc)
        if bb_idx >= 0:
            self.cfg[bb_idx].wcet = max(latency, self.cfg[bb_idx].wcet)

    def choose_basic_block(
        self,
        start_pc: int,
        end_pc: int
    ) -> int:
        """
        Determine the basic block between given start and end PCs, if one
        exists.

        The log files from gem5 contain instrumentation points (IPTs):
          1. At the start of the kernel
          2. At each branch instruction
          3. At the end of the kernel
        The IPT logic in gem5 computes the largest observed latency between
        each of these IPTs and reports it with the IPT debug flag
        """
        # First, we get the basic block corresponding to the start PC. Since
        # the PC could correspond to an instruction at the very end of a basic
        # block, the measurement could be for the next block or the target of
        # the branch if it is taken.
        start_candidates = []
        inst = self.get_instruction(start_pc)

        # If the instruction is a branch, we consider the case where the branch
        # is taken and add the target basic block index as a candidate.
        if re.search(pattern.UNCOND_BRANCH_INST, inst) or \
            re.search(pattern.COND_BRANCH_INST, inst):
            target = inst.split()[-1]
            assert re.search(pattern.BB_LABEL, target)
            start_candidates.append(int(re.findall(r'\d+', target)[-1]))

        # If the instruction is a conditional branch or a non-branch
        # instruction, execution may proceed to the next PC. In this case,
        # the start PC is either at the start or the end of a basic block. If
        # it is at the end of the block, we choose the next basic block as the
        # candidate. Otherwise, we choose the basic block containing the start
        # PC. In either case, getting the basic block index of the next PC
        # gives the candidate.
        if not re.search(pattern.UNCOND_BRANCH_INST, inst):
            start_candidates.append(
                self.next_instruction_basic_block(start_pc)
            )

        # At this point we should have at least one candidate for unconditional
        # branches or non-branches and at most two candidates for conditional
        # branches
        assert len(start_candidates) >= 1 and len(start_candidates) <= 2

        # The end PC can also be at the beginning or end of a basic block.
        # Again, we get the block index of the next instruction.
        bb_end = self.next_instruction_basic_block(end_pc)

        # If any of the candidates is exactly one block index less than the end
        # basic block, this means the start and end PCs bound a single basic
        # block and we return the candidate
        for bb_idx in start_candidates:
            if bb_end == bb_idx + 1:
                return bb_idx

        # If we reach here, then the start and end PCs bound multiple basic
        # blocks, so we return a dummy value
        return -1

    def next_instruction_basic_block(
        self,
        pc: int
    ) -> int:
        """
        Return the basic block index of the next instruction given a PC
        """
        pcs = sorted(self.pc_map.keys())
        idx = pcs.index(pc)
        if idx < len(self.pc_map) - 1:
            return self.pc_map[pcs[idx + 1]]
        return self.pc_map[pc]

    def find_branches(self) -> None:
        """
        Set properties of each branching block for use by the split point
        selection algorithms
        """
        # TODO: Check that all loops have been unrolled
        parent_stack: list[int] = []
        for u in sorted(self.cfg.keys()):
            bb = self.cfg[u]
            while len(parent_stack) > 0 \
                and u == self.cfg[parent_stack[-1]].reconv:
                parent_stack.pop()
            if len(parent_stack) > 0:
                bb.parent = parent_stack[-1]
            if len(bb.successors()) > 1:
                if not bb.is_bsb():
                    parent_stack.append(u)
                forward_branch_targets = \
                    [v for v in bb.successors() if v > u + 1]
                for v in forward_branch_targets:
                    if self.cfg[v].is_bsb():
                        self.cfg[u].bsb = v
                    if self.cfg[v].is_reconv():
                        if bb.is_bsb():
                            self.cfg[bb.parent].reconv = v
                            self.cfg[v].parent = bb.parent
                        else:
                            self.cfg[v].parent = u
                            self.cfg[u].reconv = v

    def number_of_vertices(self) -> int:
        """
        Returns the number of basic blocks in the kernel
        """
        return len(self.cfg)

    def non_branch_vertices(self) -> list[int]:
        """
        Returns all basic blocks that are not branches
        """
        return [bb.num for bb in self.cfg.values() if not bb.is_branch()]

    def branch_vertices(self) -> list[int]:
        """
        Returns all basic blocks that are branches
        """
        return [bb.num for bb in self.cfg.values() if bb.is_branch()]

    def execution_time(self, node: int) -> int:
        """
        Get total WCET of the basic block and its corresponding branch
        serialization and reconvergence blocks, if applicable
        """
        bb = self.cfg[node]
        w = bb.wcet
        if bb.is_branch():
            if bb.bsb != -1:
                w += self.cfg[bb.bsb].wcet
            if not self.cfg[bb.reconv].is_branch():
                w += self.cfg[bb.reconv].wcet
        return w

    def next_block_in_sequence(self, node: int) -> int:
        """
        Return the next basic block that shares a parent with the given
        basic block
        """
        bb = self.cfg[node]
        if bb.is_branch():
            reconv_block = self.cfg[bb.reconv]
            if reconv_block.is_branch():
                return reconv_block.num
            bb = reconv_block
        return bb.immediate_successor()

    def left_children(self, node: int) -> list[int]:
        """
        Return all nodes between the given basic block and its branch
        serialization block. If it doesn't have an else path, all children
        should be absorbed into the left path
        """
        bb = self.cfg[node]
        assert bb.is_branch()
        children = []
        idx = bb.immediate_successor()
        endpoint = bb.bsb if bb.has_else_path() else bb.reconv
        while idx < endpoint:
            children.append(idx)
            idx = self.next_block_in_sequence(idx)
        return children

    def right_children(self, node: int) -> list[int]:
        """
        Return all nodes between the branch serialization block of a given
        basic block and its reconvergence block. If it doesn't have an else
        path, then the right path is empty and we return an empty list
        """
        bb = self.cfg[node]
        assert bb.is_branch()
        children = []
        if bb.has_else_path():
            bsb_block = self.cfg[bb.bsb]
            idx = bsb_block.immediate_successor()
            while idx < bb.reconv:
                children.append(idx)
                idx = self.next_block_in_sequence(idx)
        return children

    def plot(self, file_name: str) -> None:
        """
        Plot the CFG using networkx and matplotlib libraries
        """
        plt.close()
        cfg = {}
        for item in self.cfg.items():
            cfg[item[0]] = item[1].successors()

        nx_graph = nx.DiGraph(cfg)

        # Draw nodes and edges
        nx_graph.graph['graph'] = {'rankdir': 'TB'}
        pos = nx.nx_pydot.pydot_layout(nx_graph, prog='dot')
        nx.draw(
            nx_graph,
            pos,
            with_labels=True,
            node_size=500,
            node_color='skyblue',
            font_size=10,
            font_color='black',
            font_weight='bold'
        )

        # Add weight labels
        node_labels = {node: f"{self.cfg[node].wcet}" \
                       for node in list(nx_graph.nodes())}
        label_positions = {}
        for node, position in pos.items():
            label_positions[node] = (position[0], position[1] - 50)
        nx.draw_networkx_labels(
            nx_graph,
            label_positions,
            labels=node_labels,
            font_size=10,
            font_color='green',
            font_weight='bold'
        )

        # Display plot
        plt.axis('off')
        plt.savefig(file_name)

    def read_from_csv(self, file_name: str) -> None:
        """
        Read the contents of a CSV file to construct the CFG
        """
        df = pd.read_csv(file_name)
        for idx, row in df.iterrows():
            self.insert_basic_block(num=idx, wcet=row["wcet"])
            bb = self.cfg[idx]
            bb.is_a_bsb = bool(row['is_bsb_node'])
            bb.is_a_reconv = bool(row['is_reconv_node'])

            # filter out nodes with no successors; pandas reads them as NaN
            successors = []
            if not pd.isna(row['successors']):
                successors = row['successors'].split(';')

            for dst in successors:
                self.insert_edge(idx, int(dst))
        # TODO: Check that there are no cycles

    def write_to_csv(self, file_name: str = "") -> str:
        """
        Write the CFG properties to a given CSV file
        """
        csv_str = "wcet,is_bsb_node,is_reconv_node,successors\n"
        for idx in sorted(self.cfg.keys()):
            bb = self.cfg[idx]
            successors = ';'.join(str(j) for j in bb.successors())
            csv_str += f"{bb.wcet},{bb.is_bsb()},{bb.is_reconv()},{successors}\n"
        # TODO: Check that there are no cycles

        with open(file_name, 'w+', encoding="utf-8") as fo:
            fo.write(csv_str)

    def write_disassembly(self, file_name: str = "") -> None:
        """
        Write the disassembly back to a file, with annotated PCs
        """
        asm_str = ""
        inst_map = self.get_insts()
        for pc in sorted(self.get_insts().keys()):
            inst = inst_map[pc]
            asm_str += f"{str(pc)} {inst}\n"

        with open(file_name, 'w+', encoding="utf-8") as fo:
            fo.write(asm_str)