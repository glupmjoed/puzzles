#!/bin/bash

fmt='^([a-z-]+)-([0-9]+)\[([a-z]+)\]$'

sed -E "/$fmt/!d; s/$fmt/\1 \2 \3/g"
