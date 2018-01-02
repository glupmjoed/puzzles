#!/bin/bash

./sim.sh | sort -nr | awk 'NR==1 { print $1 }'
