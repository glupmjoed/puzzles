#!/bin/bash

echo $(($(./hash.sh | head -2 | tr '\n' '*')1))
