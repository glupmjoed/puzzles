#!/bin/bash

./bin/walk | sed -r 's/[^A-Z]*([A-Z])+[^A-Z]*/\1/g' && echo
