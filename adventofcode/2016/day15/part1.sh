#!/bin/bash

sed 's/[^0-9 ]//g' | awk -f find_time.awk
