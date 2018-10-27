all: bin/after0 bin/after2017

bin/after0: after0.go
	mkdir -p bin
	go build -o bin/after0 after0.go

bin/after2017: after2017.go
	mkdir -p bin
	go build -o bin/after2017 after2017.go

.PHONY: all clean

clean:
	rm -rf bin *~
