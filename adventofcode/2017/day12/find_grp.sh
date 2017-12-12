#!/bin/bash

prev=0; rem=-1;
cat > pipes && head -1 pipes > conns
while [ $rem -ne $prev ];
do grep -E -f conns pipes > match && cat match >> conns
   prev=$rem; rem=$(cat pipes conns | sort | uniq -u | wc -l); done
