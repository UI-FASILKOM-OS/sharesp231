# REV01: Sun 12 Mar 2023 18:00
# START: Sat 11 Mar 2023 22:00
#        1         2         3         4         5         6         7
# 34567890123456789012345678901234567890123456789012345678901234567890
# Please complete this file.

bin_PROGRAMS = prog1 prog2

prog1_SOURCES = prog1.c share.c
prog2_SOURCES = prog2.c share.c

INCLUDES = -I.

# Compile share.c as a separate object file
share_OBJECTS = share.o
share_SOURCES = share.c

# Link the binaries with share.o
prog1_LDADD = share.o
prog2_LDADD = share.o

