#!/usr/bin/bash

rm sim.txt 2> /dev/null
rm ext.txt 2> /dev/null

for benchmark in `ls logs/`;
do
    grep "Kernel 000 inst" data/rodinia/$benchmark.log | cut -d" " -f"6" | sort -u > sim.txt
    cat data/rodinia/$benchmark-00-anno.s | cut -d" " -f"1" | sort -u > ext.txt
    cmp --silent sim.txt ext.txt || echo "$benchmark files are different"
    rm sim.txt 2> /dev/null
    rm ext.txt 2> /dev/null
done