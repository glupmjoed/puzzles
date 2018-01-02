#!/bin/bash

./sim.sh | sort -s -k 2 | tac | uniq -f 1 | sort -nr | awk 'NR==1 { print $1 }'
