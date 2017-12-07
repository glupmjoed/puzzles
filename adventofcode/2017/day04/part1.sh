#!/bin/bash

sed -r '/(\b\w+\b).*\b\1\b/d' | wc -l
