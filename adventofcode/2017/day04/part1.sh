#!/bin/bash

sed -r '/(\b\w+\b).*\1/d' | wc -l
