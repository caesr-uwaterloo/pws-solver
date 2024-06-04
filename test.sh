#!/usr/bin/bash

rm sim.txt 2> /dev/null
rm ext.txt 2> /dev/null

for benchmark in `ls data/rodinia/*bfs.log | cut -d"/" -f3 | cut -d"." -f1`;
do
    num_unique_kernels=`grep "Kernel [0-9]* inst" data/rodinia/$benchmark.log | cut -d" " -f"4" | sort -u | wc -l`
    for i in $(seq -f "%03g" 0 $(expr $num_unique_kernels - 1));
    do
        grep "Kernel $i inst" data/rodinia/$benchmark.log | cut -d" " -f"6" | sort -u > sim.txt
        cat data/rodinia/$benchmark-$i-anno.s | cut -d" " -f"1" | sort -u > ext.txt
        cmp --silent sim.txt ext.txt || echo "$benchmark kernel $i files are different"
        rm sim.txt 2> /dev/null
        rm ext.txt 2> /dev/null
    done
done