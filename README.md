# Predictable Wavefront Splitting (PWS) Split Point Solver

The purpose of this project is to automate the process of choosing which branches in a GPU kernel are the best candidates for wavefront splitting.
This repository contains (mostly Python) code to extract a control-flow graph (CFG) from assembly code and use it to solve for a set of feasible split points given hardware constraints.

## Quick Start

This repo contains a convenience [Makefile](./Makefile) to quickly run through extraction and/or finding split points for all benchmarks in the [`data/`](./data/) directory.

```bash
pip install -r requirements.txt
make extract
make solve
```

## Running Solver

This script takes a graph as input in the form of a CSV and solves for the split points using each of the available algorithms in the [`src/alg`](./src/alg/) directory.
The usage is as follows:

```text
python3.12 solver.py -i <graph> [-s <num simds> -c <output file> -t <timeout>]
```

### Dependencies
  - `<graph>` : A CSV file encoding the CFG

## Generating Graph Inputs

Each row in the CSV represents a basic block in the CFG.
The sequence of rows serves as the set of indices for the basic blocks.
The row uses the following format:
- Execution time of the block,
- Whether or not the block is a BSB,
- Whether or not the block is a reconvergence node,
- Each successor node separated by semi-colons

One way to generate inputs for the solver is by using the script [`extract.py`](./extract.py).
The script parses the gem5 execution log and AMD GPU assembly file to extract the
CFG of a benchmark.
The usage is as follows:

```text
python3.12 extract.py -i <asm> [-l <log> -u -r -d -p]
```

### Dependencies
  - `<asm>` : This is the GCN assembly code generated by HIP.
  It contains all basic block annotations and instructions executed by the kernel(s) and is generated by the HIP compiler using the `-save-temps` flag.
  - `<log>` : This is the output generated by gem5 when running the HIP benchmark using the `PWSDebug` and `IPT` debug flags. 
  It contains the address for each instruction and the execution time between instrumentation points, which we extract to determine basic block execution times.

### Outputs
  - `<input>-XXX.csv` : A CSV file encoding the CFG for the `XXX`th kernel in the given assembly file.
  - `<input>-XXX.png` : A plot of the graph structure annotated with basic block WCETs as weights.
  The script will only output this with the `-p` or `--plot` flag.
  - `<input>-XXX-anno.s` : A copy of the assembly instructions for the `XXX`th kernel annotated with program counter values.
  The script will only output this with the `-d` or `--disassemble` flag.

### Other Options
  - `-u`/`--unroll`: Unrolls any loops in the given kernel(s).
  The solvers assume there are no loops so this flag is essential for solver use.
  - `-r`/`--renumber`: Renumbers the basic blocks based on the topological ordering of the CFG.
  This is not essential, but useful for viewing the CFG and troubleshooting errors.