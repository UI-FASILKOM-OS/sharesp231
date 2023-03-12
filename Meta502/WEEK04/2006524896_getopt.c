/*************************************************************************\
*                  Copyright (C) Michael Kerrisk, 2022.                   *
*                                                                         *
* This program is free software. You may use, modify, and redistribute it *
* under the terms of the GNU General Public License as published by the   *
* Free Software Foundation, either version 3 or (at your option) any      *
* later version. This program is distributed without any warranty.  See   *
* the file COPYING.gpl-v3 for details.                                    *
* RMS: Modified for QUIZ Week02                                           *
\*************************************************************************/

// Listing B-1
// t_getopt.c: Demonstrate the use of getopt(3) to parse command-line options.

#include <ctype.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#ifdef __GNUC__
__attribute__((noreturn))
#endif

static void             /* Print "usage" message and exit */
usageError(void)
{
    fprintf(stderr, "ERROR\n");
    exit(EXIT_FAILURE);
}


int main(int argc, char *argv[])
{
    int opt, xfnd;
    char *bstr;
    char *nstr;
    int bbool;

    xfnd = 0;
    bstr = NULL;
    nstr = NULL;

    while ((opt = getopt(argc, argv, "n:b")) != -1) {
        switch (opt) {
        case 'b': 
          bbool = 1;
          break;
        case 'n':
          nstr = optarg;
          break;
        default:  usageError();
        }
    }

    if (optind < argc) {
      printf("Hello %s!\n", argv[optind]);
    } else {
      printf("Hello!\n");
    }

    if (bbool == 1) {
      printf("It is a beautiful day!\n");  
    }

    if (nstr != NULL) {
      printf("Is your name %s?\n", nstr);
    }
    exit(EXIT_SUCCESS);
}

