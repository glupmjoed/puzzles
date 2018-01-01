#!/bin/bash

sed -E 's/[^0-9]*([0-9]+)[^0-9]+/\1|/g; s/[0-9]+/_&_/g' | ./find_grp.sh

arglen=-1
while [ $arglen -ne 0 ]
do cat pipes conns | sort | uniq -u > arg
   arglen=$(cat arg | wc -l); ((i++))
   cat arg | ./find_grp.sh
done
echo $i; rm -f arg conns match pipes
