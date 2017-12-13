#!/bin/bash

tee >(wc -l) | tac | ./calc_delay
