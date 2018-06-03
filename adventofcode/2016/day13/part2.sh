#!/bin/bash

./bin/explore | awk '$1 > 50 { exit } { acc++ } END { print acc }'
