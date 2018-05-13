#!/bin/bash

sed -E 's/(^|$)/"/g; s/[^"\\]//g' | tr -d '\n' | wc -c
