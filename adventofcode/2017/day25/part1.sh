#!/bin/bash

mkdir -p bin build
./transpile_blueprint.sh | gofmt > build/state_machine.go
cd bin && go build ../build/state_machine.go
./state_machine
