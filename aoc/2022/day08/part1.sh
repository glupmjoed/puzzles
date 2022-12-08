#!/bin/bash

./rotations.sh | ./visible.awk | sort -u | wc -l
