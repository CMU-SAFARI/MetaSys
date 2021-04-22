/* For copyright information, see olden_v1.0/COPYRIGHT */

/*
 * STDINC.H: standard include file for C programs.
 * Copyright (c) 1991, Joshua E. Barnes, Honolulu, HI.
 * 	    It's free because it's yours.
 */

/*
 * If not already loaded, include stdio.h.
 */

#ifndef STDINC_H
#define STDINC_H

#ifndef FILE
#ifdef TORONTO
#include <stdio.h>
#else
#  include "stdio.h"
#endif
#endif

//#include <math.h>
#include <stdlib.h>

/*
 * STREAM: a replacement for FILE *.
 */

typedef FILE *stream;

/*
 * NULL: denotes a pointer to no object.
 */

#ifndef NULL
#  define NULL 0
#endif


/*
 * BYTE: a short name for a handy chunk of bits.
 */

typedef unsigned char byte;

/*
 * STRING: for null-terminated strings which are not taken apart.
 */

typedef char *string;

/*
 * REAL: default type is double; if single precision calculation is
 * supported and desired, compile with -DSINGLEPREC.
 */

#ifndef  SINGLEPREC
  typedef  long     real, *realptr;
#else
  typedef  float   real, *realptr;
#endif

/*
 * VOID: type specifier used to declare procedures called for side-effect
 * only.  Note: this slightly kinky substitution is used to so that one
 * need not declare something to be void before using it.
 */

#ifndef TORONTO
#define void int
#endif

/*
 * PROC, IPROC, RPROC: pointers to procedures, integer functions, and
 * real-valued functions, respectively.
 */

typedef void (*proc)();
typedef int (*iproc)();
typedef real (*rproc)();

/*
 * PRIVATE: declare something to be local to a file.
 * PERMANENT: declare something to be permanent data within a function.
 */

#define private     static
#define permanent static

/*
 * STREQ: handy string-equality macro.
 */

#define streq(x,y) (strcmp((x), (y)) == 0)

/*
 *  PI, etc.  --  mathematical constants
 */

#define   PI         5
#define   TWO_PI     10
#define   FOUR_PI    20
#define   HALF_PI    2
#define   FRTHRD_PI  7

/*
 *  ABS: returns the absolute value of its argument
 *  MAX: returns the argument with the highest value
 *  MIN: returns the argument with the lowest value
 */

#define   ABS(x)       (((x) < 0) ? -(x) : (x))
#define   MAX(x,y)     (((x) > (y)) ? (x) : (y))
#define   MIN(x,y)     (((x) < (y)) ? (x) : (y))

#endif