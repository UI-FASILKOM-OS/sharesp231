# REV02: Mon 13 Mar 2024 16:00
# REV01: Sun 12 Mar 2023 18:00
# START: Sat 11 Mar 2023 22:00
#        1         2         3         4         5         6         7
# 34567890123456789012345678901234567890123456789012345678901234567890
# Please complete this file.
bin_PROGRAMS = prog1 prog2

prog1_SOURCES = prog1.c share.c share.h
prog1_LDADD = 

prog2_SOURCES = prog2.c share.c share.h
prog2_LDADD = 

AM_CFLAGS = -std=gnu18

# Remove all generated files
.PHONY: superclean
superclean:
	rm -rf Makefile config.* depcomp install-sh missing aclocal.m4 compile
	rm -rf stamp-h1 AUTHORS autom4te.cache Changelog configure COPYING .deps
	rm -rf INSTALL .Makefile.am.swp Makefile.in NEWS prog1 prog1.o prog2 prog2.o README share.o ChangeLog
