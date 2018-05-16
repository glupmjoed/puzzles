#!/bin/bash

d=$(cat); echo -e ${d:0:${#d}/2}'\n'${d:${#d}/2:${#d}/2} | sed -E 's/\B/ /g' |
    rs -T | awk 'BEGIN { acc = 0 } $1 == $2 { acc += $1*2 } END { print acc }'
