#!/usr/bin/python3.12

"""\
This script takes a graph as input and solves for the split points using each
of the available algorithms.

Usage: python3.12 solver.py -i <graph> \
            [-s <num simds> \
             -c <output file> \
             -t <timeout> \
             -a <algorithms to run>]

Dependencies:
  <graph> : The CSV file generated by extract.py
"""

from pathlib import Path
import argparse
import signal
import timeit

from src.alg.algorithm import Algorithm
from src.alg.brute_force_algorithm import BruteForceAlgorithm
from src.alg.dp_algorithm import DPAlgorithm
from src.alg.dws_algorithm import DWSAlgorithm
from src.alg.ilp_algorithm import ILPAlgorithm
from src.alg.naive_algorithm import NaiveAlgorithm
from src.alg.no_algorithm import NoSplitAlgorithm
from src.alg.random_algorithm import RandomAlgorithm
from src.graph import Graph

def handler(signum, frame):
    raise TimeoutError()

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "-i",
        "--input",
        help="Input file name",
        type=str,
        default=""
    )
    parser.add_argument(
        "-s",
        "--simds",
        help="Number of SIMDs for CFG",
        type=int,
        default=3
    )
    parser.add_argument(
        "-c",
        "--csv",
        help="Output to CSV file",
        type=str,
        default=""
    )
    parser.add_argument(
        "-t",
        "--timeout",
        help="Number of seconds before timeout for each solver",
        type=int,
        default=60
    )
    parser.add_argument(
        "-o",
        "--omit",
        help="Omit data and just output a CSV header",
        action="store_true"
    )
    parser.add_argument(
        "-a",
        "--algorithms",
        help="Comma-separated algorithm names to use by solver",
        type=str,
        default="No Splitting,DWS,Random,Naive,DP,Brute Force,ILP"
    )
    args = parser.parse_args()

    g = Graph()
    if Path(args.input).is_file():
        g.read_from_csv(args.input)
        g.find_branches()
    s = args.simds
    algs: list[Algorithm] = [
        NoSplitAlgorithm(g, s),
        DWSAlgorithm(g, s),
        RandomAlgorithm(g, s),
        NaiveAlgorithm(g, s),
        DPAlgorithm(g, s),
        BruteForceAlgorithm(g, s),
        ILPAlgorithm(g, s)
    ]
    algs_to_run = args.algorithms.split(",")

    output_file = Path(args.csv)
    valid_output: bool = output_file.parent.is_dir() \
        and len(output_file.name) > 4
    if not valid_output:
        print(
            f"{f'Algorithm':<25} "
            f"{f'Split Choices':<25} "
            f"{f'Analytical WCET':<25} "
            f"{f'Algorithm Runtime (s)':<25}"
        )
    wcets = []
    runtimes = []
    wcet_header = ','.join([
        f"{a.name()} WCET" for a in algs if a.name() in algs_to_run
    ])
    time_header = ','.join([
        f"{a.name()} Runtime" for a in algs if a.name() in algs_to_run
    ])
    csv_row = ""
    if args.omit:
        csv_row = f"Name,{wcet_header},{time_header}\n"
    else:
        assert Path(args.input).is_file()
        a: Algorithm
        for a in algs:
            if a.name() in algs_to_run:
                signal.signal(signal.SIGALRM, handler)
                signal.alarm(args.timeout)
                start = timeit.default_timer()
                wcet = -1
                try:
                    sp = a.solve()
                    wcet = a.wcet(splits=sp)
                except TimeoutError:
                    sp = [-1]
                end = timeit.default_timer()
                choice = ','.join([str(i) for i in sp])
                wcets.append(str(wcet))
                runtimes.append(str(end-start))
                if not valid_output:
                    print(
                        f"{a.name():<25} "
                        f"{choice:<25} "
                        f"{wcet:<25} "
                        f"{end-start:0.9f}"
                    )
        # csv_row = f"{args.input},{','.join(wcets)}\n"
        csv_row = f"{args.input},{','.join(wcets)},{','.join(runtimes)}\n"

    if valid_output:
        with open(args.csv, mode="a+") as fo:
            fo.write(csv_row)
