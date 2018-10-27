DAYS := $(wildcard day*)

all:

.PHONY: all clean

clean:
	rm -f *~
	@for day in $(DAYS); do $(MAKE) clean -C $$day --no-print-directory; done
