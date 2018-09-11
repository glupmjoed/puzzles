#!/bin/bash

a=$(grep -o .)

for ((n=0; n<$1; n++)); do a=$(echo $a | tr ' ' '\n' | uniq -c); done

echo $a | tr -d '\n ' | wc -c
