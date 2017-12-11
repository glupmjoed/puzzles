#!/bin/bash

grep -oE "[-0-9]+" | tee >(wc -l) | tac | ./maze $1
