#!/bin/bash

grep "^#" | grep -oE "[0-9]+" | awk '{ printf "%s+", $1 } END { print 0 }' | bc
