#!/bin/bash

sed -E '/(.).\1/!d; /(.)(.).*\1\2/!d' | wc -l
