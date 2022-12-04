#!/bin/bash

tr ',-' '  ' | awk '{ o += !($2 < $3 || $4 < $1) } END { print o }'
