#!/bin/bash

sed -E '/(\b\w+\b).*\1/d' | wc -l
