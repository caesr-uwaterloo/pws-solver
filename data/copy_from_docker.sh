#!/bin/bash

for i in {6..6}
do
    for j in {5..9}
    do
        docker cp 39d8d5943bb7:/hip-benchmarks/synthetic/depth$i/test0$j/synthetic-hip-amdgcn-amd-amdhsa-gfx801.s data/depth${i}test0${j}.s
        docker cp 39d8d5943bb7:/gem5/logs/synthetic/depth$i/test0$j/64.log data/depth${i}test0${j}-64.log
        docker cp 39d8d5943bb7:/gem5/logs/synthetic/depth$i/test0$j/4096.log data/depth${i}test0${j}-4096.log
        python src/extract.py -i depth${i}test0$j
    done
done