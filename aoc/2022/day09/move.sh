#!/bin/bash

visits=$(./init.awk)

for _ in $(seq "$1"); do visits=$(./tail.awk <<< "$visits"); done

echo "$visits" | sort -u | wc -l
