#!/bin/bash

d="$(grep -o .)"
for i in 0 1
do echo "$d" | sed -E $i~2d | awk -f coords.awk
done | sort | uniq | wc -l
