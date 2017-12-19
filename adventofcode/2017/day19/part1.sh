#!/bin/bash

go run walk.go | sed -r 's/[^A-Z]*([A-Z])+[^A-Z]*/\1/g' && echo
