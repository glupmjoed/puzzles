#!/bin/bash

lseq=$(echo $(printf "%s" "$(cat)" | od -A n -t d1) "17 31 73 47 23")

for _ in $(seq 64)
do echo $lseq | grep -oE "[0-9]+"
done | ./bin/sparse_hash | awk -f condense.awk
