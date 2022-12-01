#!/bin/bash

awk -F 'x' -f sort3.awk | ./len.awk
