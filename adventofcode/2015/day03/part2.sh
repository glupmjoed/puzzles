#!/bin/bash

d="$(grep -o .)"
for i in {0..1}; do echo "$d" | awk "NR % 2 == $i" | awk -f coords.awk
done | sort | uniq | wc -l
