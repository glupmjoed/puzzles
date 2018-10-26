#!/bin/bash

grep -oE "[-0-9]+" | awk '{ print } END { print NR }' | tac | ./bin/maze $1
