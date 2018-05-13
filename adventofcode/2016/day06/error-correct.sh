#!/bin/bash

sed -E 's/\B/ /g' | rs -T -c' ' |
    while read -r row
    do echo $row | grep -o [a-z] | sort | uniq -c | sort $1 |
            awk ' NR == 1 { printf "%s", $2 }'
    done && echo
