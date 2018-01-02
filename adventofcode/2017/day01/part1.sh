#!/bin/bash

grep -o . | sed '1p; 1{h;d}; $G' | uniq -c |
    awk '{ printf "(%d-1)*%d+", $1, $2 } END { print 0 }' | bc
