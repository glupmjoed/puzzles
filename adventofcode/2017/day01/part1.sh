#!/bin/bash

grep -o . | sed '1p; 1{h;d}; $G' | uniq -c |
    awk '{ acc += ($1-1) * $2 } END { print acc }'
