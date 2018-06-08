#!/bin/bash

./sim.sh | sort -n | awk 'END { print $1 }'
