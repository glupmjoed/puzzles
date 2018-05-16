#!/bin/bash

awk -F 'x' -f sort3.awk | awk -f paper.awk
