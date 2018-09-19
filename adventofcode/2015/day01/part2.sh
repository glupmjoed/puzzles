#!/bin/bash

grep -o . | awk '/\(/ { a++ } /\)/ { a-- } { if (a < 0) { print NR; exit } }'
