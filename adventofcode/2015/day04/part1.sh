#!/bin/bash

./bin/hash | awk 'NR == 1 { print $2; exit }'
