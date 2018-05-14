#!/bin/bash

while read r1; do read r2; read r3; echo $r1$'\n'$r2$'\n'$r3 | rs -T
done | ./part1.sh
