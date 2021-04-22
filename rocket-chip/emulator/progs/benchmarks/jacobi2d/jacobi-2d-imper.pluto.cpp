#include <math.h>
#define __ceild(n,d)  ((n)/(d) + (1))
#define __floord(n,d) ((n)/(d))
#define __max(x,y)    ((x) > (y)? (x) : (y))
#define __min(x,y)    ((x) < (y)? (x) : (y))

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "crosslayer.h"
#include "HPC.h"

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

#define N 512
#define T 128

#pragma declarations
uint64_t a[N][N];
uint64_t b[N][N];
#pragma enddeclarations

#ifdef TIME
#define IF_TIME(foo) foo;
#else
#define IF_TIME(foo)
#endif

void init_array()
{
    int i, j;

    for (i=0; i<N; i++) {
        for (j=0; j<N; j++) {
            a[i][j] = 1;
        }
    }
}

int main()
{
    int t, i, j;

    init_array();  
    #ifdef NOATOM
    atom_init(GRANULARITY, true);
    #else
    atom_init(GRANULARITY, false);
    atom_deactivate(0);
    //atom_define(1, 0, 2*8*1024);
    atom_define(0, 0, 32);

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
  int mapSize1 = 1;
 register int lbv, ubv;
HPC perfMon;
perfMon.startMeasurement();
/* Start of CLooG code */
if ((N >= 4) && (T >= 1)) {
  for (t1=0;t1<=__floord(T-1,16);t1++) {
    for (t2=__ceild(t1-3,4);t2<=__min(__floord(2*T+N-3,128),__floord(32*t1+N+29,128));t2++) {
      for (t3=__max(__ceild(t1-3,4),__ceild(128*t2-N-123,128));t3<=__min(__min(__floord(2*T+N-3,128),__floord(32*t1+N+29,128)),__floord(128*t2+N+123,128));t3++) {
          if ((t1 <= __floord(128*t3-N+1,32)) && (t2 <= t3-1)) {
          if ((N+1)%2 == 0) {
            for (t5=__max(128*t2,128*t3-N+4);t5<=128*t2+127;t5++) {
              a[(-128*t3+t5+N-2)][(N-2)]=b[(-128*t3+t5+N-2)][(N-2)];;
            }
          }
        }
        if (t1 <= __floord(128*t2-N+1,32)) {
          if ((N+1)%2 == 0) {
            for (t6=__max(128*t3,128*t2-N+4);t6<=__min(128*t2,128*t3+127);t6++) {
              a[(N-2)][(-128*t2+t6+N-2)]=b[(N-2)][(-128*t2+t6+N-2)];;
            }
          }
        }
        if ((N == 4) && (t2 == t3)) {
          for (t4=__max(16*t1,64*t2-1);t4<=__min(__min(T-1,16*t1+15),64*t2+62);t4++) {
            b[2][2]= 3*(a[2][2]+a[2][2 -1]+a[2][1+2]+a[1+2][2]+a[2 -1][2]);;
            a[2][2]=b[2][2];;
          }
        }
        if (t2 == t3) {
          for (t4=__max(__ceild(128*t2-N+2,2),16*t1);t4<=__min(__min(__min(__floord(128*t2-N+128,2),T-1),16*t1+15),64*t2-2);t4++) {
            for (t5=128*t2;t5<=2*t4+N-2;t5++) {
              for (t6=128*t2;t6<=2*t4+N-2;t6++) {
                b[(-2*t4+t5)][(-2*t4+t6)]= 3*(a[(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)][(-2*t4+t6)-1]+a[(-2*t4+t5)][1+(-2*t4+t6)]+a[1+(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)-1][(-2*t4+t6)]);;
                a[(-2*t4+t5-1)][(-2*t4+t6-1)]=b[(-2*t4+t5-1)][(-2*t4+t6-1)];;
              }
              a[(-2*t4+t5-1)][(N-2)]=b[(-2*t4+t5-1)][(N-2)];;
            }
            for (t6=128*t2;t6<=2*t4+N-1;t6++) {
              a[(N-2)][(-2*t4+t6-1)]=b[(N-2)][(-2*t4+t6-1)];;
            }
          }
        }
        for (t4=__max(__max(__ceild(128*t2-N+129,2),__ceild(128*t3-N+2,2)),16*t1);t4<=__min(__min(__min(__floord(128*t3-N+128,2),T-1),16*t1+15),64*t2-2);t4++) {
          for (t5=128*t2;t5<=128*t2+127;t5++) {
            for (t6=128*t3;t6<=2*t4+N-2;t6++) {
              b[(-2*t4+t5)][(-2*t4+t6)]= 3*(a[(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)][(-2*t4+t6)-1]+a[(-2*t4+t5)][1+(-2*t4+t6)]+a[1+(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)-1][(-2*t4+t6)]);;
              a[(-2*t4+t5-1)][(-2*t4+t6-1)]=b[(-2*t4+t5-1)][(-2*t4+t6-1)];;
            }
            a[(-2*t4+t5-1)][(N-2)]=b[(-2*t4+t5-1)][(N-2)];;
          }
        }
        for (t4=__max(__max(__ceild(128*t2-N+2,2),__ceild(128*t3-N+129,2)),16*t1);t4<=__min(__min(__min(__floord(128*t2-N+128,2),T-1),16*t1+15),64*t3-2);t4++) {
          for (t5=128*t2;t5<=2*t4+N-2;t5++) {
            for (t6=128*t3;t6<=128*t3+127;t6++) {
              b[(-2*t4+t5)][(-2*t4+t6)]= 3*(a[(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)][(-2*t4+t6)-1]+a[(-2*t4+t5)][1+(-2*t4+t6)]+a[1+(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)-1][(-2*t4+t6)]);;
              a[(-2*t4+t5-1)][(-2*t4+t6-1)]=b[(-2*t4+t5-1)][(-2*t4+t6-1)];;
            }
          }
          for (t6=128*t3;t6<=128*t3+127;t6++) {
            a[(N-2)][(-2*t4+t6-1)]=b[(N-2)][(-2*t4+t6-1)];;
          }
        }
        t4=__max(__max(__ceild(128*t2-N+129,2),__ceild(128*t3-N+129,2)),16*t1);
        t5=128*t2;
        t6=128*t3;
        //PIN A
        #ifndef NOATOM
        #ifndef LOOKUPONLY                        
        mapSize1 = __max(1, (64*8)/(1<<GRANULARITY));
        for(int i = 0 ; i < 64 ; i++)
        {
            atom_map((void*)&(a[(-2*t4+t5-1)+i][(-2*t4+t6-1)]), mapSize1, 0);
            atom_map((void*)&(b[(-2*t4+t5)+i][(-2*t4+t6)]), mapSize1, 0);
        }
        #endif
        #endif
        for (t4=__max(__max(__ceild(128*t2-N+129,2),__ceild(128*t3-N+129,2)),16*t1);t4<=__min(__min(__min(T-1,16*t1+15),64*t2-2),64*t3-2);t4++) {
        t5=128*t2;
        t6=128*t3;
        //Prefetch A
        #ifndef NOATOM 
        #ifndef LOOKUPONLY                       
        mapSize1 = __max(1, (128*8)/(1<<GRANULARITY));
        for(int i = 0 ; i < 128 ; i++)
        {
            atom_map((void*)&(a[(-2*t4+t5-1)+i][(-2*t4+t6-1)]), mapSize1, 0);
            atom_map((void*)&(b[(-2*t4+t5)+i][(-2*t4+t6)]), mapSize1, 0);
        }
        atom_activate(0);
        #endif
        #endif
          for (t5=128*t2;t5<=128*t2+127;t5++) {
            for (t6=128*t3;t6<=128*t3+127;t6++) {
              b[(-2*t4+t5)][(-2*t4+t6)]= 3*(a[(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)][(-2*t4+t6)-1]+a[(-2*t4+t5)][1+(-2*t4+t6)]+a[1+(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)-1][(-2*t4+t6)]);;
              a[(-2*t4+t5-1)][(-2*t4+t6-1)]=b[(-2*t4+t5-1)][(-2*t4+t6-1)];;
            }
          }
        }
        if ((N >= 5) && (t2 == t3)) {
          for (t4=__max(16*t1,64*t2-1);t4<=__min(__min(__floord(128*t2-N+128,2),T-1),16*t1+15);t4++) {
            for (t6=2*t4+2;t6<=2*t4+N-2;t6++) {
              b[2][(-2*t4+t6)]= 3*(a[2][(-2*t4+t6)]+a[2][(-2*t4+t6)-1]+a[2][1+(-2*t4+t6)]+a[1+2][(-2*t4+t6)]+a[2 -1][(-2*t4+t6)]);;
            }
            for (t5=2*t4+3;t5<=2*t4+N-2;t5++) {
              b[(-2*t4+t5)][2]= 3*(a[(-2*t4+t5)][2]+a[(-2*t4+t5)][2 -1]+a[(-2*t4+t5)][1+2]+a[1+(-2*t4+t5)][2]+a[(-2*t4+t5)-1][2]);;
              for (t6=2*t4+3;t6<=2*t4+N-2;t6++) {
                b[(-2*t4+t5)][(-2*t4+t6)]= 3*(a[(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)][(-2*t4+t6)-1]+a[(-2*t4+t5)][1+(-2*t4+t6)]+a[1+(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)-1][(-2*t4+t6)]);;
                a[(-2*t4+t5-1)][(-2*t4+t6-1)]=b[(-2*t4+t5-1)][(-2*t4+t6-1)];;
              }
              a[(-2*t4+t5-1)][(N-2)]=b[(-2*t4+t5-1)][(N-2)];;
            }
            for (t6=2*t4+3;t6<=2*t4+N-1;t6++) {
              a[(N-2)][(-2*t4+t6-1)]=b[(N-2)][(-2*t4+t6-1)];;
            }
          }
        }
        if (t2 == t3) {
            t4=__max(__max(__ceild(128*t2-N+129,2),16*t1),64*t2-1);
            t5=2*t4+3;
            t6=2*t4+3;
            #ifndef NOATOM
            #ifndef LOOKUPONLY  
            atom_deactivate(0);                       
            mapSize1 = __max(1, (64*8)/(1<<GRANULARITY));
            for(int i = 0 ; i < 64 ; i++)
            {
              atom_map((void*)&(a[(-2*t4+t5-1)+i][(-2*t4+t6-1)]), mapSize1, 0);
              atom_map((void*)&(b[(-2*t4+t5)+i][(-2*t4+t6)]), mapSize1, 0);
            }
            #endif
            #endif
            for (t4=__max(__max(__ceild(128*t2-N+129,2),16*t1),64*t2-1);t4<=__min(__min(T-1,16*t1+15),64*t2+62);t4++) {
                for (t6=2*t4+2;t6<=128*t2+127;t6++) {
                    b[2][(-2*t4+t6)]= 3*(a[2][(-2*t4+t6)]+a[2][(-2*t4+t6)-1]+a[2][1+(-2*t4+t6)]+a[1+2][(-2*t4+t6)]+a[2 -1][(-2*t4+t6)]);;
                }
                t5=2*t4+3;
                t6=2*t4+3;
                #ifndef NOATOM
                #ifndef LOOKUPONLY                         
                mapSize1 = __max(1, (128*8)/(1<<GRANULARITY));
                for(int i = 0 ; i < 128 ; i++)
                {
                  atom_map((void*)&(a[(-2*t4+t5-1)+i][(-2*t4+t6-1)]), mapSize1, 0);
                  atom_map((void*)&(b[(-2*t4+t5)+i][(-2*t4+t6)]), mapSize1, 0);
                }
                atom_activate(0);
                #endif
                #endif
                for (t5=2*t4+3;t5<=128*t2+127;t5++) {
                    b[(-2*t4+t5)][2]= 3*(a[(-2*t4+t5)][2]+a[(-2*t4+t5)][2 -1]+a[(-2*t4+t5)][1+2]+a[1+(-2*t4+t5)][2]+a[(-2*t4+t5)-1][2]);;
                    for (t6=2*t4+3;t6<=128*t2+127;t6++) {
                        b[(-2*t4+t5)][(-2*t4+t6)]= 3*(a[(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)][(-2*t4+t6)-1]+a[(-2*t4+t5)][1+(-2*t4+t6)]+a[1+(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)-1][(-2*t4+t6)]);;
                        a[(-2*t4+t5-1)][(-2*t4+t6-1)]=b[(-2*t4+t5-1)][(-2*t4+t6-1)];;
                    }
                }
                #ifndef NOATOM
                #ifndef LOOKUPONLY                
                atom_deactivate(0);
                #endif
                #endif
            }
        }
        for (t4=__max(__max(__ceild(128*t3-N+2,2),16*t1),64*t2-1);t4<=__min(__min(__min(__min(__floord(128*t3-N+128,2),T-1),16*t1+15),64*t2+62),64*t3-2);t4++) {
          for (t6=128*t3;t6<=2*t4+N-2;t6++) {
            b[2][(-2*t4+t6)]= 3*(a[2][(-2*t4+t6)]+a[2][(-2*t4+t6)-1]+a[2][1+(-2*t4+t6)]+a[1+2][(-2*t4+t6)]+a[2 -1][(-2*t4+t6)]);;
          }
          for (t5=2*t4+3;t5<=128*t2+127;t5++) {
            for (t6=128*t3;t6<=2*t4+N-2;t6++) {
              b[(-2*t4+t5)][(-2*t4+t6)]= 3*(a[(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)][(-2*t4+t6)-1]+a[(-2*t4+t5)][1+(-2*t4+t6)]+a[1+(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)-1][(-2*t4+t6)]);;
              a[(-2*t4+t5-1)][(-2*t4+t6-1)]=b[(-2*t4+t5-1)][(-2*t4+t6-1)];;
            }
            a[(-2*t4+t5-1)][(N-2)]=b[(-2*t4+t5-1)][(N-2)];;
          }
        }
        t4=__max(__max(__ceild(128*t3-N+129,2),16*t1),64*t2-1);
        t5=2*t4+3;
        t6=128*t3;
        //PIN A            
        #ifndef NOATOM
        #ifndef LOOKUPONLY                         
        mapSize1 = __max(1, (64*8)/(1<<GRANULARITY));
        for(int i = 0 ; i < 64 ; i++)
        {
          atom_map((void*)&(a[(-2*t4+t5-1)+i][(-2*t4+t6-1)]), mapSize1, 0);
          atom_map((void*)&(b[(-2*t4+t5)+i][(-2*t4+t6)]), mapSize1, 0);
        }
        #endif
        #endif
        for (t4=__max(__max(__ceild(128*t3-N+129,2),16*t1),64*t2-1);t4<=__min(__min(__min(T-1,16*t1+15),64*t2+62),64*t3-2);t4++) {
          for (t6=128*t3;t6<=128*t3+127;t6++) {
            b[2][(-2*t4+t6)]= 3*(a[2][(-2*t4+t6)]+a[2][(-2*t4+t6)-1]+a[2][1+(-2*t4+t6)]+a[1+2][(-2*t4+t6)]+a[2 -1][(-2*t4+t6)]);;
          }
          t5=2*t4+3;
          t6=128*t3;
          //Prefetch A
          #ifndef NOATOM
          #ifndef LOOKUPONLY                         
          mapSize1 = __max(1, (128*8)/(1<<GRANULARITY));
          for(int i = 0 ; i < 128 ; i++)
          {
            atom_map((void*)&(a[(-2*t4+t5-1)+i][(-2*t4+t6-1)]), mapSize1, 0);
            atom_map((void*)&(b[(-2*t4+t5)+i][(-2*t4+t6)]), mapSize1, 0);
          }
          atom_activate(0);
          #endif
          #endif
          for (t5=2*t4+3;t5<=128*t2+127;t5++) {
            for (t6=128*t3;t6<=128*t3+127;t6++) {
              b[(-2*t4+t5)][(-2*t4+t6)]= 3*(a[(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)][(-2*t4+t6)-1]+a[(-2*t4+t5)][1+(-2*t4+t6)]+a[1+(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)-1][(-2*t4+t6)]);;
              a[(-2*t4+t5-1)][(-2*t4+t6-1)]=b[(-2*t4+t5-1)][(-2*t4+t6-1)];;
            }
          }
          #ifndef NOATOM
          #ifndef LOOKUPONLY 
          atom_deactivate(0);
          #endif
          #endif
        }
        for (t4=__max(__max(__ceild(128*t2-N+2,2),16*t1),64*t3-1);t4<=__min(__min(__min(__min(__floord(128*t2-N+128,2),T-1),16*t1+15),64*t2-2),64*t3+62);t4++) {
          for (t5=128*t2;t5<=2*t4+N-2;t5++) {
            b[(-2*t4+t5)][2]= 3*(a[(-2*t4+t5)][2]+a[(-2*t4+t5)][2 -1]+a[(-2*t4+t5)][1+2]+a[1+(-2*t4+t5)][2]+a[(-2*t4+t5)-1][2]);;
            for (t6=2*t4+3;t6<=128*t3+127;t6++) {
              b[(-2*t4+t5)][(-2*t4+t6)]= 3*(a[(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)][(-2*t4+t6)-1]+a[(-2*t4+t5)][1+(-2*t4+t6)]+a[1+(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)-1][(-2*t4+t6)]);;
              a[(-2*t4+t5-1)][(-2*t4+t6-1)]=b[(-2*t4+t5-1)][(-2*t4+t6-1)];;
            }
          }
          for (t6=2*t4+3;t6<=128*t3+127;t6++) {
            a[(N-2)][(-2*t4+t6-1)]=b[(N-2)][(-2*t4+t6-1)];;
          }
        }
        t4=__max(__max(__ceild(128*t2-N+129,2),16*t1),64*t3-1);
        t5=128*t2;
        t6=2*t4+3;
        //PIN A
        #ifndef NOATOM
        #ifndef LOOKUPONLY                         
        mapSize1 = __max(1, (64*8)/(1<<GRANULARITY));
        for(int i = 0 ; i < 64 ; i++)
        {
            atom_map((void*)&(a[(-2*t4+t5-1)+i][(-2*t4+t6-1)]), mapSize1, 0);
            atom_map((void*)&(b[(-2*t4+t5)+i][(-2*t4+t6)]), mapSize1, 0);
        }
        #endif
        #endif
        for (t4=__max(__max(__ceild(128*t2-N+129,2),16*t1),64*t3-1);t4<=__min(__min(__min(T-1,16*t1+15),64*t2-2),64*t3+62);t4++) {
        t5=128*t2;
        t6=2*t4+3;
        #ifndef NOATOM
        #ifndef LOOKUPONLY                         
        mapSize1 = __max(1, (128*8)/(1<<GRANULARITY));
        for(int i = 0 ; i < 128 ; i++)
        {
            atom_map((void*)&(a[(-2*t4+t5-1)+i][(-2*t4+t6-1)]), mapSize1, 0);
            atom_map((void*)&(b[(-2*t4+t5)+i][(-2*t4+t6)]), mapSize1, 0);
        }
        atom_activate(0);
        #endif
        #endif
          for (t5=128*t2;t5<=128*t2+127;t5++) {
            b[(-2*t4+t5)][2]= 3*(a[(-2*t4+t5)][2]+a[(-2*t4+t5)][2 -1]+a[(-2*t4+t5)][1+2]+a[1+(-2*t4+t5)][2]+a[(-2*t4+t5)-1][2]);;
            for (t6=2*t4+3;t6<=128*t3+127;t6++) {
              b[(-2*t4+t5)][(-2*t4+t6)]= 3*(a[(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)][(-2*t4+t6)-1]+a[(-2*t4+t5)][1+(-2*t4+t6)]+a[1+(-2*t4+t5)][(-2*t4+t6)]+a[(-2*t4+t5)-1][(-2*t4+t6)]);;
              a[(-2*t4+t5-1)][(-2*t4+t6-1)]=b[(-2*t4+t5-1)][(-2*t4+t6-1)];;
            }
          }
        }
        #ifndef NOATOM
        #ifndef LOOKUPONLY
        atom_deactivate(0);
        #endif
        #endif
      }
    }
  }
}
      perfMon.endMeasurement();
      perfMon.printStats();
      perfMon.printCSV();
}
