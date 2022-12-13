#!/bin/bash

(cat && echo) | ./decode.pl | bc | sed -n "$1p"
