#!/bin/bash

sed -E 's/[^0-9]*([0-9]+)[^0-9]+/\1|/g; s/[0-9]+/_&_/g' | ./find_grp.sh
grep -oE "[0-9]+" conns | sort | uniq -d | wc -l && rm -f conns match pipes
