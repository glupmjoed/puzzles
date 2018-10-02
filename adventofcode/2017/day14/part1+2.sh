#!/bin/bash

key=$(cat)
for i in {0..127}
do echo $key-$i | ./knot_hash.sh
done | ./hex2bin.sh > bin
cat bin | tr -dc '1' | echo "Part 1:" $(wc -c)

cat bin | ./build_graph.py | gc -c | awk '{ print "Part 2: ", $1 }'; rm -f bin
