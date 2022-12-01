#!/bin/bash

a=$(grep -o .); for _ in $(seq "$1"); do a=$(echo $a | tr ' ' '\n' | uniq -c); done
echo "$a" | tr -d '\n ' | wc -c
