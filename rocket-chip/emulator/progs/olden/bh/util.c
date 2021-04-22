/* For copyright information, see olden_v1.0/COPYRIGHT */

/*
 * UTIL: various useful routines and functions.
 * Copyright (c) 1991, Joshua E. Barnes, Honolulu, HI.
 * 	    It's free because it's yours.
 */

#include "stdinc.h"
#include <errno.h>

#define A	16807
#define M	2147483647

void exit(int);

/* random:
 * return a random number, which is also the next seed.
 */
long my_rand(long seed)
{
    long	t = A*seed  + 1; 
    //double floor();


    seed = t - (M * (t / M));
    return seed;

} /* end of random */

/*
 * XRAND: generate floating-point random number.
 */

long xrand(long xl, long xh, long r)
{   long res;

    res = xl + (xh-xl)*r;
    return (res);
}




/*
 * ERROR: scream and die quickly.
 */

void error(char *msg)
{
    fprintf(stderr, msg);
    if (errno != 0)
        perror("Error");
    exit(0);
}



