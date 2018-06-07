#!/bin/bash

sed -Ef stz.sed | awk -f sim.awk
