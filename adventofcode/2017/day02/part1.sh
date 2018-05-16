#!/bin/bash

while read -r line
do echo $line | grep -oE '[0-9]+' | sort -n |
        awk 'NR==1 { min = $1 } END { print $1-min }'
done | paste -sd+ | bc
