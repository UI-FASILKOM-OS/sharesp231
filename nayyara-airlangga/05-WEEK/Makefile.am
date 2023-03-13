# REV02: Sun 13 Mar 2023 16:11
# START: Sat 11 Mar 2023 22:00
#        1         2         3         4         5         6         7
# 34567890123456789012345678901234567890123456789012345678901234567890
# Please complete this file.

AM_CFLAGS = -std=gnu18

bin_PROGRAMS = prog1 prog2

prog1_SOURCES = prog1.c
prog1_LDADD = share.o

prog2_SOURCES = prog2.c
prog2_LDADD = share.o

.PHONY: superclean

superclean: clean
	rm -rf .deps Makefile Makefile.in aclocal.m4 autom4te.cache compile
	rm -rf config.h config.h.in config.log config.status configure 
	rm -rf depcomp install-sh missing stamp-h1

EXTRA_DIST = superclean
