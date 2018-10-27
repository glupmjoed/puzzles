all:

bin/state_machine: state_machine.go
	mkdir -p bin
	go build -o bin/state_machine state_machine.go

state_machine.go:
	cp head.go state_machine.go
	sed 's/[.:]$$//g' | awk -f transpile_main.awk | gofmt >> state_machine.go

.PHONY: clean

clean:
	rm -rf bin state_machine.go *~
