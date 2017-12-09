#!/bin/bash

sed -r 's/!.//g; s/[^><]*<([^>]*)>[^<]*/\1/g' | tr -d '\n' | wc -c
