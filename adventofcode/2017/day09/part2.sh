#!/bin/bash

sed -E 's/!.//g; s/[^><]*<([^>]*)>[^<]*/\1/g' | tr -d '\n' | wc -c
