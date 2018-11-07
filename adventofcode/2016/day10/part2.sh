#!/bin/bash

OUTPUT='[0-9]+ to output [0-2]\b'

./bin/zoom | grep -oE "$OUTPUT" | cut -d ' ' -f 1 | paste -sd* | bc
