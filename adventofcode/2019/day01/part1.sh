#!/bin/bash

awk '{ sum += int($1/3)-2 } END { printf "%d\n", sum }'
