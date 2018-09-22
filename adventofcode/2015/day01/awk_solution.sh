#!/bin/bash

grep -o . | awk '/\(/ { a++ } /\)/ { a-- } END { print a }'
