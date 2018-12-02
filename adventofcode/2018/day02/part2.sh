#!/bin/bash

sort |
    while read -r line
    do
        l=$(grep -o . <<< $line)
        df=$(diff <(echo "$prev") <(echo "$l"))
        if [ $(grep "^>" <<< "$df" | wc -l) -eq 1 ]
        then
            sed $(grep -oE "^[0-9]+" <<< $df)d <<< "$l" | paste -sd ''; exit
        fi
        prev="$l"
    done
