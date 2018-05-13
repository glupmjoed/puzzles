#!/bin/bash

while read -r dims
do echo $dims | tr 'x' '\n' | sort -n | tr '\n' 'x' |
        sed -E '/[^x0-9]/d; s/^(.*)x(.*)x(.*)x$/3*\1*\2+2*\1*\3+2*\2*\3+/g'
done | echo $(cat) 0 | bc
