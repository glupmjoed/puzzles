#!/bin/bash

key=$(cat)
for i in {0..127}
do echo $key-$i | ./knot_hash.sh
done | awk 'BEGIN { print "ibase=16; obase=2;" } { print toupper($0) }' |
    bc > bin
grep -o "1" bin | echo "Part 1:" $(wc -l)

echo $(cat bin) | grep -oE "[01]+[^01]*[01]+" | sed 's/\\ //g' |
    ./build_graph.py | gc -c | awk '{ print "Part 2: ", $1 }'; rm -f bin
