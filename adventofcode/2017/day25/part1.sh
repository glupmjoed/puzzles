#!/bin/bash

mkdir -p bin build
sed 's/0\./\&=^/g; s/1\./|=/g; s/[.:;{}]//g' |
    cat head.go <(awk -f transpile_main.awk) | gofmt > build/state_machine.go
cd bin && go build ../build/state_machine.go
./state_machine
