#!/bin/bash

while read -r line
do
	echo $line | grep -oE '[0-9]+' | sort -nr |
	awk 'NR==1 { printf "(%d-", $N }; END { printf "%d)+", $N }'
done |
	echo $(($(cat)0))
