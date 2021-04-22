#include <math.h>
#define __ceild(n,d)  ((n)/(d) + (1))
#define __floord(n,d) ((n)/(d))
#define __max(x,y)    ((x) > (y)? (x) : (y))
#define __min(x,y)    ((x) < (y)? (x) : (y))

#include <stdio.h>
#include <stdlib.h>
#include "crosslayer.h"
#include "HPC.h"

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

#define N 1024

#pragma declarations
uint64_t a[N][N];
#pragma enddeclarations



void init_array()
{
    int i, j, k;

    for (i=0; i<N; i++) {
        for (j=0; j<N; j++) {
            //for (k=0; k<N; k++) {
                a[i][j] += (i+1)*(j+1);//i==j?1:0;
            // }
        }
    }
}

int main()
{
	int i, j, k;



	init_array() ;
    #ifdef NOATOM
    atom_init(GRANULARITY, true);
    #else
    atom_init(GRANULARITY, false);
    atom_deactivate(0);
    atom_define(1, 0, 2*8*1024);
    atom_define(2, 0, 2*8);
    #endif
    
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
HPC perfMon;
perfMon.startMeasurement();
if (N >= 2) {
  for (t1=0;t1<=__floord(N-2,128) && iter < 1 ;t1++, iter++) {
    for (t2=t1;t2<=__floord(N-1,128) && iter < 1 ;t2++, iter++) {
      for (t3=t1;t3<=__floord(N-1,128);t3++) {
        if (t1 == t3) {
          for (t4=128*t1;t4<=__min(N-2,128*t1+126);t4++) {
            t5=__max(128*t2,t4+1);
            //a[t4][t5] - only pin -- not much point pinning
            #ifndef NOATOM
            #ifndef LOOKUPONLY                         
            int mapSizeA  = __max(1, (128*8)/(1<<GRANULARITY));
            int mapSizeA2 = 1;
            atom_map((void*)&(a[t4][t5]), mapSizeA, 3);
            atom_deactivate(3);
            for(int i = 0 ; i < 128 ; i++)
              atom_map((void*)&(a[t4+1+i][t4]), mapSizeA2, 1);
            
            for(int i = 1 ; i < 128 ; i++)
              atom_map((void*)&(a[t4+1+i][t5]), mapSizeA, 1);
            atom_activate(1);
            #endif
            #endif
            for (t5=__max(128*t2,t4+1);t5<=__min(N-1,128*t2+127);t5++) {
              a[t4][t5] = a[t4][t5]/a[t4][t4];;
              for (t6=t4+1;t6<=__min(N-1,128*t1+127);t6++) {
                a[t6][t5] = a[t6][t5] + a[t6][t4]*a[t4][t5];;
              }
            }
            #ifndef NOATOM
            #ifndef LOOKUPONLY 
            atom_deactivate(1);
            #endif
            #endif
          }
        }
        if ((t1 == t3) && (t1 <= t2-1)) {
          for (t5=128*t2;t5<=__min(N-1,128*t2+127);t5++) {
            a[(128*t1+127)][t5] = a[(128*t1+127)][t5]/a[(128*t1+127)][(128*t1+127)];;
          }
        }
        if (t1 <= t3-1) {
          #ifndef NOATOM
          #ifndef LOOKUPONLY                        
          int mapSizeA  = __max(1, (128*8)/(1<<GRANULARITY));
          for(int i = 0 ; i < 128 ; i++)
              atom_map((void*)&(a[128*t3+i][128*t2]), mapSizeA, 0);
          #endif
          #endif
          for (t4=128*t1;t4<=__min(128*t1+127,128*t2+126);t4++) {
              t5=__max(128*t2,t4+1);
              #ifndef NOATOM
              #ifndef LOOKUPONLY                         
              int mapSizeA  = __max(1, (128*8)/(1<<GRANULARITY));
              int mapSizeA2 = 1;
              atom_map((void*)&(a[t4][t5]), mapSizeA, 3);
              atom_deactivate(3);
              for(int i = 0 ; i < 128 ; i++)
                  atom_map((void*)&(a[128*t3+i][t4]), mapSizeA2, 1);     
              for(int i = 1 ; i < 128 ; i++)
                  atom_map((void*)&(a[128*t3+i][t5]), mapSizeA, 1);
              atom_activate(1);
              #endif
              #endif
              for (t5=__max(128*t2,t4+1);t5<=__min(N-1,128*t2+127);t5++) {
                  for (t6=128*t3;t6<=__min(N-1,128*t3+127);t6++) {
                      a[t6][t5] = a[t6][t5] + a[t6][t4]*a[t4][t5];;
                  }
              }
              #ifndef NOATOM
              #ifndef LOOKUPONLY 
              atom_deactivate(1);
              #endif
              #endif
          }
        }
      }
    }
  }
}
      perfMon.endMeasurement();
      perfMon.printStats();
      perfMon.printCSV();
    return 0;
}
