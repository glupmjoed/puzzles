#!/bin/bash

tr ',-' '  ' | awk '{ o += !($1 < $3 && $2 < $4 || $3 < $1 && $4 < $2) } END { print o }'
