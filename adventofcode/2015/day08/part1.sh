#!/bin/bash

sed -E 's/(^|$)/\\./g' | grep -oE '\\.'| sed 's/\\x/&\n\n/g' | wc -l
