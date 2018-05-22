#!/bin/bash

sed 's/$/$/g; s/./&\n/g' | uniq -c | tr -d '\n 1' | tr '$[]' '\n  ' |
    awk -f sort_odd.awk |
    sed -E 's/[2-9](.)/\1 \1/g; /([a-z])([a-z])\1.*-.*\2\1\2/!d' | wc -l
