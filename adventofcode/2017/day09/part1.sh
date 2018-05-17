#!/bin/bash

sed 's/!.//g; s/<[^>]*>//g; s/./&\n/g' | awk -f track_score.awk
