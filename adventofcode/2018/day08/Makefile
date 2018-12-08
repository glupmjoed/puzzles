all: bin/walk_tree

bin/walk_tree: walk_tree.go
	mkdir -p bin
	go build -o bin/walk_tree walk_tree.go

.PHONY: all clean

clean:
	rm -rf bin *~
