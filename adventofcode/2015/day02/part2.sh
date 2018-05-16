#!/bin/bash

awk -F 'x' -f sort3.awk | awk -f ribbon.awk
