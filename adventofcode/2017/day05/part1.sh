#!/bin/bash

grep -oE "[-0-9]+" | awk '{ print } END { print NR }' | tac | ./maze $1
