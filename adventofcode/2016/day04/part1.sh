#!/bin/bash

./sanitize.sh |
    while read -r name id checksum
    do sum=$(echo $name | grep -o "[a-z]" | sort | uniq -c |
             sort -k 1,1rn -k 2,2 |
             awk 'NR <= 5 { printf "%s", $2 } END { print "" }')
       if [ $sum == $checksum ]; then echo -n $id"+"; fi
    done | echo $(cat) 0 | bc
