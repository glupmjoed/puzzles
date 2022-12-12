#!/bin/bash

d=$(grep -o .); for i in 0 1; do sed -E $i~2d <<< "$d" | ./coords.awk; done |
    sort -u | wc -l
