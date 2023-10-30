import matplotlib.pyplot as plt # type: ignore
import networkx as nx # type: ignore

class Graph():
    def __init__(self, cfg: dict[int, set[int]], weights: dict[int, int] = {}) -> None:
        self.cfg = cfg
        self.branches: list[int] = []
        self.bsb: dict[int, int] = {}
        self.reconv: dict[int, int] = {}
        self.parent: dict[int, int] = {}
        parent_stack = [-1]
        if len(weights) == 0:
            self.weight = {key: 0 for key in self.cfg.keys()}
        else:
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
                # assert len(non_loop_successors) == 2
                self.branches.append(node)
                parent_stack.append(node)
                self.bsb[node] = sorted(cfg[node])[-1]
                self.reconv[node] = sorted(cfg[self.bsb[node]])[-1]
                # Workaround for branches that don't have an else
                if len(cfg[self.bsb[node]]) == 1:
                    self.reconv[node] = self.bsb[node]
                assert self.reconv[node] > node
                assert self.bsb[node] > node

    def write_to_file(self, file_name: str) -> None:
        """
        Output the contents of the CFG and the WCETs of each basic block to a
        given file
        """
        with open(file_name, 'w', encoding="utf-8") as fo:
            for node in sorted(self.cfg):
                line = f"{node} {self.weight[node]}"
                for target in sorted(self.cfg[node]):
                    line += f" {target}"
                fo.write(f"{line}\n")

    def number_of_vertices(self) -> int:
        return len(self.cfg)
    
    def non_branch_vertices(self) -> list[int]:
        return [v for v in self.cfg if v not in self.branches]
    
    def branch_vertices(self) -> list[int]:
        return self.branches
    
    def execution_time(self, node: int) -> int:
        w = self.weight[node]
        if node in self.branches:
            w += self.weight[self.bsb[node]]
            if self.reconv[node] not in self.branches:
                w += self.weight[self.reconv[node]]
        return w
    
    def left_child(self, node: int) -> int:
        assert node in self.branches
        return node + 1
    
    def right_child(self, node: int) -> int:
        assert node in self.branches
        return self.bsb[node] + 1

    def next_branch(self, node: int) -> int:
        for b_i in sorted(self.branches):
            if b_i >= node:
                return b_i
        return 0

    def left_children(self, node: int) -> list[int]:
        assert node in self.branches
        i = node + 1
        if i not in self.branches:
            return [i, i+1] # FIXME: make this more dynamic
        children = []
        while self.next_branch(i) and i < self.bsb[node]:
            children.append(i)
            i = self.next_branch(self.reconv[i])
        return children
    
    def right_children(self, node: int) -> list[int]:
        assert node in self.branches
        i = self.bsb[node] + 1
        if i not in self.branches:
            return [i, i+1] # FIXME: make this more dynamic
        children = []
        while self.next_branch(i) and i < self.reconv[node]:
            children.append(i)
            i = self.next_branch(self.reconv[i])
        return children
    
    def plot(self, file_name: str) -> None:
        """
        Plot the CFG using networkx and matplotlib libraries
        """
        plt.close()
        nx_graph = nx.DiGraph(self.cfg)
        
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
        node_labels = {node: f"{self.weight[node]}" \
                       for node in list(nx_graph.nodes())[:-1]}
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
