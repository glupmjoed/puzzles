#!/bin/bash

awk '{ do { $1=int($1/3)-2; sum+=$1 } while ($1>8) } END { printf "%d\n", sum }'
