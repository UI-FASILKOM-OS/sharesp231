# REV03: Mon 13 Mar 2023 16:20
# REV02: Mon 13 Mar 2023 16:00
# REV01: Sun 12 Mar 2023 18:00
# START: Sat 11 Mar 2023 22:00
#        1         2         3         4         5         6         7
# 34567890123456789012345678901234567890123456789012345678901234567890
# Please complete this file.

bin_PROGRAMS = prog1 prog2

prog1_SOURCES = prog1.c
prog2_SOURCES = prog2.c

INCLUDES = -I.
AM_CFLAGS = -std=gnu18

# Compile share.c as a separate object file
share_OBJECTS = share.o
share_SOURCES = share.c

# Link the binaries with share.o
prog1_LDADD = share.o
prog2_LDADD = share.o

superclean:
	rm -rf .deps/ AUTHORS COPYING ChangeLog INSTALL Makefile
	rm -rf Makefile.in NEWS README aclocal.m4 autom4te.cache/
	rm -rf compile config.guess config.log config.status
	rm -rf config.sub configure depcomp install-sh ltmain.sh
	rm -rf missing prog1 prog1.o prog2 prog2.o share.o

