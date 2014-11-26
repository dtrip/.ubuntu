#!/usr/bin/make -f
# GNU Makefile

COMPILER = valac
VFLAGS = --pkg gtk+-3.0 # -C to compile to .c
BUILDDIR = build
OUTPUTFILE = Ubuntu\ Setup

SRC = src/*.vala

all:
		$(COMPILER) ${VFLAGS} -o $(BUILDDIR)/$(OUTPUTFILE) $(SRC)

clean:
	rm -f $(BUILDDIR)/$(OUTPUTFILE)
