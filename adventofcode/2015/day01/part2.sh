#!/bin/bash

sed 's/./&\n/g' |
    while read -r paren
    do if [ "$paren" == "(" ]; then ((i++)); else ((i--)); fi; echo $i
    done | cat -n | grep -m 1 '\-1$' | awk '{ print $1 }'
