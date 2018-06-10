#!/bin/bash

awk '{ print $0} END { print NR + 1 " 11 0 0" }' | ./part1.sh
