#!/bin/bash

sed -E 's/([0-9]+)[ \t]+/\1 /g' | tee dists | ./redistribute.py |
    while read -r line
    do echo $line >> dists; ((++i))
       if [ $(sort dists | uniq -d | wc -l) -ne 0 ]; then echo $((i)); break; fi
    done | echo "Part 1:" $(cat)

grep -n "$(tail -1 dists)" dists | tac | awk -F : '{ print $1 }' |
    echo $(tr '\n' '-')0 | echo "Part 2:" $(bc); rm -f dists
