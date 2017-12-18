#!/bin/bash

./bin/simulate 1 | tail -1 | awk '{ print $3 }'
