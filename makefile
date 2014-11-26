#!/usr/bin/make -f
# GNU Makefile

COMPILER = valac
VFLAGS = --pkg gtk+-3.0
BUILDDIR = ../build
OUTPUTFILE = Ubuntu Setup

SOURCES = src/*.vala

all:
	$(COMPILER) ${VFLAGS} -o $(OUTPUTFILE)
