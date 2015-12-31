# Makefile for libosdp

all:
	(cd src-lib; make all; cd ..)
	(cd src-485; make all; cd ..)
	(cd src-ui; make all; cd ..)

clean:
	(cd src-lib; make clean; cd ..)
	(cd src-485; make clean; cd ..)
	(cd src-ui; make clean; cd ..)

build:	all
	(cd src-lib; make build; cd ..)
	(cd src-485; make build; cd ..)
	(cd src-ui; make build; cd ..)

release:	build
	tar czvf release-libosdp.tgz opt/*
