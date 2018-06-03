#!/bin/bash

./bin/explore | awk '/31 39$/ { print $1; exit }'
