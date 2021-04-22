#include <math.h>
#define _ceild(n,d)  ((n)/(d) + 1)
#define _floord(n,d) ((n)/(d))
#define _max(x,y)    ((x) > (y)? (x) : (y))
#define _min(x,y)    ((x) < (y)? (x) : (y))

#include <stdio.h>
#include <stdlib.h>

#include "HPC.h"
#include "crosslayer.h"

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

#define N_max 512

uint64_t a[N_max][N_max], b[N_max][N_max], c[N_max][N_max];

int main()
{

   #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  atom_init(GRANULARITY, false);
  atom_deactivate(0);
  atom_define(1,0,64);
  atom_define(2,0,64);
  #endif
  int i,j, k;

  for (i = 0; i < N_max; i++) {
    for (j = 0; j < N_max; j++) {
      b[i][j] = _max(i+j,1);
      a[i][j] = i*j*1;
    }
  }

HPC perfMon;
perfMon.startMeasurement();

  int t1, t2, t3, t4, t5, t6;
 register int lbv, ubv;
 int iter = 0;
/* Start of CLooG code */
if (N_max >= 2) {
  for (t1=0;t1<=_floord(N_max-1,128) && iter < 1 ;t1++, iter++) {
    for (t2=0;t2<=_floord(N_max-1,64);t2++) {
      for (t3=0;t3<=_min(_floord(t2,4),_floord(N_max-2,256));t3++) {
          //b[t4][t5]
          #ifndef NOATOM
          for(int i = 0 ; i < 128 ; i++)
            atom_map((void*)&b[128*t1+i][_max(64*t2,256*t3+1)], _max(1, 512/(1<<GRANULARITY)), 1);
          //b[t4][t6]
          for(int i = 0 ; i < 128 ; i++)
            atom_map((void*)&b[128*t1+i][256*t3], _max(1,2048/(1<<GRANULARITY)), 1);
          //a[t5][t6]
          for(int i = 0 ; i < 64 ; i++)
            atom_map((void*)&a[_max(64*t2,256*t3+1)+i][256*t3], _max(1,2048/(1<<GRANULARITY)), 2);
            atom_activate(2);
            atom_activate(1);
            #endif
        for (t4=128*t1;t4<=_min(N_max-1,128*t1+127);t4++) {
          for (t5=_max(64*t2,256*t3+1);t5<=_min(N_max-1,64*t2+63);t5++) {
            lbv=256*t3;
            ubv=_min(256*t3+255,t5-1);
            for (t6=lbv;t6<=ubv;t6++) {
              b[t4][t6] += a[t5][t6] * b[t4][t5];;
            }
          }
        }
        #ifndef NOATOM
        atom_deactivate(2);
        atom_deactivate(1);
        #endif
      }
    }
  }
}
perfMon.endMeasurement();
perfMon.printStats();
perfMon.printCSV();
}
