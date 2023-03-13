bin_PROGRAMS = prog1 prog2
prog1_SOURCES = prog1.c share.c
prog2_SOURCES = prog2.c share.c
INCLUDES = -I.

AM_CFLAGS = -std=gnu18

# Generate the share.h header file
BUILT_SOURCES = share.h

# Rule to generate the share.h header file
share.h:
    echo "#define GITHUB_ACCOUNT \"fwibisono87\"" > share.h

# Remove the share.h header file
clean-local:
    rm -f share.h
