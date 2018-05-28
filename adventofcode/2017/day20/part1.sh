#!/bin/bash

sed 's/[^0-9,]//g' | awk -F ',' '{ print $7+$8+$9 " " NR-1 }' | sort -n |
    head -5
