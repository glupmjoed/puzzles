#!/bin/bash

./rotations.sh 2 | ./score.awk | sort -nr | sed -n '1p'
