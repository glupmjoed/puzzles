#!/bin/bash

cat > pipes && head -1 pipes > conns
prev=0; rem=-1
while [ $rem -ne $prev ]
do grep -E -f conns pipes > match && cat match >> conns
   prev=$rem; rem=$(cat pipes conns | sort | uniq -u | wc -l)
done
