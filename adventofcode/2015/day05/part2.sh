#!/bin/bash

sed -E '/(.)(.).*\1\2/!d; /(.).\1/!d' | wc -l
