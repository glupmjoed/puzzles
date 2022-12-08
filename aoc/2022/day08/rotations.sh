#!/bin/bash

map=$(cat)

i=1 # left (from above)
echo "$map" |
    while read -r row; do echo "$row 1 $i 1 0"; ((i++)); done

i=1 # upper (rotate)
sed 's/./& /g' <<< "$map" | rs -T | tr -d ' ' |
    while read -r row; do echo "$row $i 1 0 1"; ((i++)); done

[[ $1 == 2 ]] && exit

i=1 # right (reverse)
rev <<< "$map" |
    while read -r row; do echo "$row ${#row} $i -1 0"; ((i++)); done

i=1 # lower (rotate, reverse)
sed 's/./& /g' <<< "$map" | rs -T | tr -d ' ' | rev |
    while read -r row; do echo "$row $i ${#row} 0 -1"; ((i++)); done
