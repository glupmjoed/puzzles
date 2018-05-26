#!/bin/bash

awk -F ': ' '!($1 % ($2 * 2 - 2)) { acc += $1 * $2 } END { print acc }'
