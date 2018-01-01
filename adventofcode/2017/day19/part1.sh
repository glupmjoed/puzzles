#!/bin/bash

./bin/walk | sed -E 's/[^A-Z]*([A-Z])+[^A-Z]*/\1/g' && echo
