#!/bin/bash

# Below is a quick solution to AoC 2015 day 10 done in pure Bash. It is roughly
# five times slower than the solution found in filter.go.

# Usage:
# $ ./bash_solution.sh $N < input
# where $N is the number of filter applications, e.g.
# $ echo "1" | ./bash_solution.sh 5
# > 6

a=$(grep -o .)

for ((n=0; n<$1; n++)); do a=$(echo $a | tr ' ' '\n' | uniq -c); done

echo $a | tr -d '\n ' | wc -c
