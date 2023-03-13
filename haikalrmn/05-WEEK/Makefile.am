# REV02: Mon 13 Mar 2023 16:24
# REV01: Sun 12 Mar 2023 18:00
# START: Sat 11 Mar 2023 22:00
#        1         2         3         4         5         6         7
# 34567890123456789012345678901234567890123456789012345678901234567890
# Please complete this file.

AM_CFLAGS 	= -std=gnu18
bin_PROGRAMS 	= prog1 prog2

prog1_SOURCES	= prog1.c
prog1_LOADD	= share.o

prog2_SOURCES	= prog2.c
prog2_LOADD 	= share.o
.PHONY: superclean

superclean: 
	rm -rf aclocal.m4 autom4te.cache compile config.h config.h.in
	rm -rf config.log config.status Makefile configure .deps/
	rm -rf depcomp install-sh Makefile.in missing stamp-h1
