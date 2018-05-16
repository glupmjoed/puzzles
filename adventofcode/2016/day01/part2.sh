#!/bin/bash

./coords.sh | cat -n | sort -k 2,3 | uniq -d -f 1 | sort -n | head -1 |
    cut -f 2 | grep -oE "[0-9]+" | paste -sd+ | bc
