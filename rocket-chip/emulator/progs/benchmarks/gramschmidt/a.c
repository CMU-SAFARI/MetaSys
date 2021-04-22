#include <math.h>
#define ceild(n,d)  ceil(((double)(n))/((double)(d)))
#define floord(n,d) floor(((double)(n))/((double)(d)))
#define max(x,y)    ((x) > (y)? (x) : (y))
#define min(x,y)    ((x) < (y)? (x) : (y))


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include "zsim_hooks.h"

#define N 3000

double (*A)[N];
double (*Q)[N];
double (*R)[N];

void main() {
    A = malloc(sizeof *A * N);
    Q = malloc(sizeof *Q * N);
    R = malloc(sizeof *R * N);

    int i, j;

    for (i = 0; i < N; i++)
        for (j = 0; j < N; j++) {
            A[i][j] = ((double) i*j) / N;
            Q[i][j] = ((double) i*(j+1)) / N;
        }
    for (i = 0; i < N; i++)
        for (j = 0; j < N; j++)
            R[i][j] = ((double) i*(j+2)) / N;
    int k;
    double nrm;

    for (k = 0; k < N; k++) {
        for (j = k + 1; j < N; j++) {
            R[k][j] = 0;
        }
    }
    zsim_roi_begin();
/* Copyright (C) 1991-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses ISO/IEC 10646 (2nd ed., published 2011-03-15) /
   Unicode 6.0.  */
/* We do not support C11 <threads.h>.  */
  int t1, t2, t3, t4, t5, t6;
 register int lbv, ubv;
 int iter = 0;
/* Start of CLooG code */
if (N >= 1) {
  for (t1=0;t1<=N-1 && iter < 10; t1++, iter++) {
    nrm = 0;;
    //prefetch A
    zsim_cache_tile_begin((uint64_t)&A[0][t1],8);
    zsim_cache_tile_begin(N*8,N);
    zsim_cache_tile_begin(0,0);
    zsim_cache_tile_begin(2,1);
    for (t3=0;t3<=N-1;t3++) {
      nrm += A[t3][t1] * A[t3][t1];;
    }
    zsim_cache_tile_end();
    R[t1][t1] = sqrt(nrm);;
    //prefetch A and Q
    zsim_cache_tile_begin((uint64_t)&A[0][t1],8);
    zsim_cache_tile_begin(N*8,N);
    zsim_cache_tile_begin(0,0);
    zsim_cache_tile_begin(2,1);

    zsim_cache_tile_begin((uint64_t)&Q[0][t1],8);
    zsim_cache_tile_begin(N*8,N);
    zsim_cache_tile_begin(0,0);
    zsim_cache_tile_begin(2,1);
    for (t3=0;t3<=floord(N-1,32);t3++) {
      lbv=32*t3;
      ubv=min(N-1,32*t3+31);
#pragma ivdep
#pragma vector always
      for (t4=lbv;t4<=ubv;t4++) {
        Q[t4][t1] = A[t4][t1] / R[t1][t1];;
      }
    }
    zsim_cache_tile_end();
    zsim_cache_tile_end();
    if (t1 <= N-2) {
      for (t3=ceild(t1-30,32);t3<=floord(N-1,32);t3++) {
          //R[t1][t5]
          zsim_cache_tile_begin((uint64_t)&R[t1][max(32*t3,t1+1)],32*8);
          zsim_cache_tile_begin(N*8,1);
          zsim_cache_tile_begin(0,0);
          zsim_cache_tile_begin(3,1);
        for (t4=0;t4<=floord(N-1,1024);t4++) {
          //A[t6][t5]
          zsim_cache_tile_begin((uint64_t)&A[1024*t4][max(32*t3,t1+1)],32*8);
          zsim_cache_tile_begin(N*8,1024);
          zsim_cache_tile_begin(0,0);
          zsim_cache_tile_begin(2,1);
          //Q[t6][t1]
          zsim_cache_tile_begin((uint64_t)&Q[1024*t4][t1],8);
          zsim_cache_tile_begin(N*8,1024);
          zsim_cache_tile_begin(3,0);
          zsim_cache_tile_begin(2,1);
          for (t5=max(32*t3,t1+1);t5<=min(N-1,32*t3+31);t5++) {
            for (t6=1024*t4;t6<=min(N-1,1024*t4+1023);t6++) {
              R[t1][t5] += Q[t6][t1] * A[t6][t5];;
            }
          }
          zsim_cache_tile_end();
          zsim_cache_tile_end();
        }
          zsim_cache_tile_end();
      }
    }
    if (t1 <= N-2) {
      for (t3=ceild(t1-30,32);t3<=floord(N-1,32);t3++) {
          //R[t1][t5]
          zsim_cache_tile_begin((uint64_t)&R[t1][max(32*t3,t1+1)],32*8);
          zsim_cache_tile_begin(N*8,1);
          zsim_cache_tile_begin(0,0);
          zsim_cache_tile_begin(3,1);
        for (t4=0;t4<=floord(N-1,1024);t4++) {
          //A[t6][t5]
          zsim_cache_tile_begin((uint64_t)&A[1024*t4][max(32*t3,t1+1)],32*8);
          zsim_cache_tile_begin(N*8,1024);
          zsim_cache_tile_begin(0,0);
          zsim_cache_tile_begin(2,1);
          //Q[t6][t1]
          zsim_cache_tile_begin((uint64_t)&Q[1024*t4][t1],8);
          zsim_cache_tile_begin(N*8,1024);
          zsim_cache_tile_begin(3,0);
          zsim_cache_tile_begin(2,1);
          for (t5=max(32*t3,t1+1);t5<=min(N-1,32*t3+31);t5++) {
            lbv=1024*t4;
            ubv=min(N-1,1024*t4+1023);
#pragma ivdep
#pragma vector always
            for (t6=lbv;t6<=ubv;t6++) {
              A[t6][t5] = A[t6][t5] - Q[t6][t1] * R[t1][t5];;
            }
          }
          zsim_cache_tile_end();
          zsim_cache_tile_end();
        }
          zsim_cache_tile_end();
      }
    }
  }
}
/* End of CLooG code */
    zsim_roi_end();

    free(A);
    free(Q);
    free(R);
}