#!/bin/bash

./sim.sh | tac | sort -k 2 -u | sort -n | awk 'END { print $1 }'
