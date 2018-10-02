#!/bin/bash

key=$(cat)
for i in {0..127}
do echo $key-$i | ./knot_hash.sh
done | ./hex2bin.sh > bin
grep -o "1" bin | echo "Part 1:" $(wc -l)

cat bin | ./build_graph.py | gc -c | awk '{ print "Part 2: ", $1 }'; rm -f bin
