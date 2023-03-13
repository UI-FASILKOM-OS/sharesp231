bin_PROGRAMS = prog1 prog2
prog1_SOURCES = prog1.c share.c
prog2_SOURCES = prog2.c share.c
INCLUDES = -I.

AM_CFLAGS = -std=gnu18

# Generate the share.h header file
BUILT_SOURCES = share.h

# Remove the share.h header file
clean-local:
    rm -f share.h
