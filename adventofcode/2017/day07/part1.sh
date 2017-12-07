#!/bin/bash

grep -oE '[a-z]+' | sort | uniq -u
