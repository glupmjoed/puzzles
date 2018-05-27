#!/bin/bash

./bin/walk | sed -E 's/[^A-Z]//g; s/$/\n/g'
