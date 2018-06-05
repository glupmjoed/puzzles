#!/bin/bash

mkdir -p bin build
cat head.go <(sed 's/[.:]$//g' | awk -f transpile_main.awk) |
    gofmt > build/state_machine.go
cd bin && go build ../build/state_machine.go
./state_machine
