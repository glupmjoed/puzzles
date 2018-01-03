#!/bin/bash

awk '{ print NR-1 " " $3 }' | sed -E 's/[^0-9]*([0-9]+)[^0-9]*/ \1 /g' |
    awk '{ printf "echo $((%s+%s+%s)) %s\n", $2, $3, $4, $1 }' | bash |
    sort -n | awk 'NR<=5 { printf "%3d (%d)\n", $2, $1 }'
