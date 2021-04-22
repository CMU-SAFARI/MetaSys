#include <math.h>
#define __ceild(n,d)  ((n)/(d) + (1))
#define __floord(n,d) ((n)/(d))
#define __max(x,y)    ((x) > (y)? (x) : (y))
#define __min(x,y)    ((x) < (y)? (x) : (y))

#include <stdio.h>
#include <stdlib.h>
#include "decls.h"
#include "crosslayer.h"
#include "HPC.h"

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

void trisolv(long N) 
{
    long i,j,k;

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
    HPC perfMon;
    perfMon.startMeasurement();
    int mapSizeB = __max(1, (128*8)/(1<<GRANULARITY));
    int mapSizeL = __max(1, (128*8)/(1<<GRANULARITY));
    /* Start of CLooG code */
    if (N >= 1) {
        for (t1=0; t1<=__floord(N-1,128) && iter < 1 ; t1++, iter++) {
            for (t2=0;t2<=__floord(N-1,256);t2++) {
                for (t3=0;t3<=__min(__floord(N-1,128),2*t2+1);t3++) {
                    if ((t2 <= __floord(N-129,256)) && (2*t2 == t3)) {
                        for (t4=128*t1;t4<=__min(N-1,128*t1+127);t4++) {
                            B[t4][256*t2]=B[t4][256*t2]/L[256*t2][256*t2];;
                            t5=256*t2+1;
                            t6=256*t2;
                            //B[t4][t5]
                            #ifndef NOATOM
                            #ifndef LOOKUPONLY
                            atom_map((void*)&(B[t4][t5]), mapSizeB, 2);
                            //L[t5][t6]
                            for(int i = 0 ; i < 128 ; i++)
                                atom_map((void*)&(L[t5+i][t6]), mapSizeL, 2);
                            atom_deactivate(2);
                            #endif
                            #endif
                            for (t5=256*t2+1;t5<=256*t2+127;t5++) {
                                #ifndef NOATOM
                                #ifndef LOOKUPONLY 
                                atom_activate(2);
                                #endif
                                #endif
                                for (t6=256*t2;t6<=t5-1;t6++) {
                                    B[t4][t5]=B[t4][t5]+L[t5][t6]*B[t4][t6];;
                                }
                                #ifndef NOATOM
                                #ifndef LOOKUPONLY 
                                atom_deactivate(2);
                                #endif
                                #endif
                                B[t4][t5]=B[t4][t5]/L[t5][t5];;
                            }
                            t5=256*t2+128;
                            t6=256*t2;
                            #ifndef NOATOM
                            #ifndef LOOKUPONLY
                            atom_map((void*)&(B[t4][t5]), mapSizeB, 2);
                            //L[t5][t6]
                            for(int i = 0 ; i < 128 ; i++)
                                atom_map((void*)&(L[t5+i][t6]), mapSizeL, 2);
                            atom_activate(2);
                            #endif
                            #endif
                            for (t5=256*t2+128;t5<=__min(N-1,256*t2+255);t5++) {
                                for (t6=256*t2;t6<=256*t2+127;t6++) {
                                    B[t4][t5]=B[t4][t5]+L[t5][t6]*B[t4][t6];;
                                }
                            }
                            #ifndef NOATOM
                            #ifndef LOOKUPONLY 
                            atom_deactivate(2);
                            #endif
                            #endif
                        }
                    }

                    if ((t2 <= __floord(N-2,256)) && (t2 >= __ceild(N-128,256)) && (2*t2 == t3)) {
                        t4=128*t1;
                        t5=256*t2+1;
                        t6=256*t2;
                        #ifndef NOATOM    
                        #ifndef LOOKUPONLY                     
                        mapSizeB = __max(1, (N*8-t5)/(1<<GRANULARITY));
                        mapSizeL = __max(1, (N*8-t6)/(1<<GRANULARITY));
                        for(int i = 0 ; i < 128 ; i++)
                        {
                            atom_map((void*)&(B[t4+i][t5]), mapSizeB, 2);
                            atom_map((void*)&(B[t4+i][t6]), mapSizeB, 2);
                        }
                        for(int i = 0 ; i < N-t5 ; i++)
                            atom_map((void*)&(L[t5+i][t6]), mapSizeL, 2);
                        #endif
                        #endif
                        for (t4=128*t1;t4<=__min(N-1,128*t1+127);t4++) {
                            B[t4][256*t2]=B[t4][256*t2]/L[256*t2][256*t2];;
                            for (t5=256*t2+1;t5<=N-1;t5++) {
                                #ifndef NOATOM
                                #ifndef LOOKUPONLY 
                                atom_activate(2);
                                #endif
                                #endif
                                for (t6=256*t2;t6<=t5-1;t6++) {
                                    B[t4][t5]=B[t4][t5]+L[t5][t6]*B[t4][t6];;
                                }
                                #ifndef NOATOM
                                #ifndef LOOKUPONLY 
                                atom_deactivate(2);                                
                                #endif
                                #endif
                                B[t4][t5]=B[t4][t5]/L[t5][t5];;
                            }
                        }
                    }
                    if ((t2 <= __floord(N-130,256)) && (2*t2 == t3-1)) {
                        t4=128*t1;
                        t5=256*t2+129;
                        t6=256*t2+128;
                        #ifndef NOATOM
                        #ifndef LOOKUPONLY 
                        mapSizeB = __max(1, (128*8)/(1<<GRANULARITY));
                        for(int i = 0 ; i < 128 ; i++)
                            atom_map((void*)&(B[t4+i][t5]), mapSizeB, 2);

                        for(int i = 0 ; i < 128 ; i++)
                            atom_map((void*)&(L[t5+i][t6]), mapSizeL, 2);
                           
                        #endif
                        #endif
                        for (t4=128*t1;t4<=__min(N-1,128*t1+127);t4++) {
                            B[t4][(256*t2+128)]=B[t4][(256*t2+128)]/L[(256*t2+128)][(256*t2+128)];;
                            for (t5=256*t2+129;t5<=__min(N-1,256*t2+255);t5++) {
                                #ifndef NOATOM
                                #ifndef LOOKUPONLY 
                                atom_activate(2);
                                #endif
                                #endif
                                for (t6=256*t2+128;t6<=t5-1;t6++) {
                                    B[t4][t5]=B[t4][t5]+L[t5][t6]*B[t4][t6];;
                                }
                                #ifndef NOATOM
                                #ifndef LOOKUPONLY 
                                atom_deactivate(2);
                                #endif
                                #endif
                                B[t4][t5]=B[t4][t5]/L[t5][t5];;
                            }
                        }
                    }
                    if (t2 >= __ceild(t3+1,2)) {
                        t4=128*t1;
                        t5=256*t2;
                        t6=128*t3;
                        #ifndef NOATOM
                        #ifndef LOOKUPONLY 
                        mapSizeB = __max(1, (128*8)/(1<<GRANULARITY));
                        int mapSizeB2 = __max(1, (256*8)/(1<<GRANULARITY));
                        mapSizeL = __max(1, (128*8)/(1<<GRANULARITY));
                        for(int i = 0 ; i < 128 ; i++)
                        {
                            atom_map((void*)&(B[t4+i][t5]), mapSizeB, 2);
                            atom_map((void*)&(B[t4+i][t6]), mapSizeB, 2);
                        }
                        for(int i = 0 ; i < 256 ; i++)
                            atom_map((void*)&(L[t5+i][t6]), mapSizeL, 2);
                        atom_activate(2);
                        #endif
                        #endif
                        for (t4=128*t1;t4<=__min(N-1,128*t1+127);t4++) {
                            for (t5=256*t2;t5<=__min(N-1,256*t2+255);t5++) {
                                for (t6=128*t3;t6<=128*t3+127;t6++) {
                                    B[t4][t5]=B[t4][t5]+L[t5][t6]*B[t4][t6];;
                                }
                            }
                        }
                        #ifndef NOATOM
                        #ifndef LOOKUPONLY 
                        atom_deactivate(2);
                        #endif
                        #endif
                    }
                    if (128*t3 == N-1) {
                        for (t4=128*t1;t4<=__min(N-1,128*t1+127);t4++) {
                            if ((N+127)%128 == 0) {
                                B[t4][(N-1)]=B[t4][(N-1)]/L[(N-1)][(N-1)];;
                            }
                        }
                    }
                }
            }
        }
    }
    perfMon.endMeasurement();
    perfMon.printStats();
    perfMon.printCSV();
}

void init_array()
  {
      int i, j;
  
    for (i = 0; i < NMAX; i++) {
      for (j = 0; j < NMAX; j++) {
        B[i][j]  = 1;
          L[i][j] = 1;
      }
  }
 

}
/*
void print_array()
{
    int i,j;
    for (i = 0; i < NMAX; i++) {
        for (j = 0; j < NMAX; j++) {
            fprintf(stderr,"%3.3lf ",B[i][j]);
        }
        fprintf(stderr,"\n");
    }
    for (i = 0; i < NMAX; i++) {
        for (j = 0; j < NMAX; j++) {
            fprintf(stderr,"%3.3lf ",L[i][j]);
        }
        fprintf(stderr,"\n");
    }
}
*/
int main()
{
    long N=NMAX;
    init_array();
    trisolv(N);
    //print_array();
    return 0;
}
