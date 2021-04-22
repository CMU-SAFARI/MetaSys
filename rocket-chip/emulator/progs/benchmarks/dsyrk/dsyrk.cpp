#include <math.h>
#define _ceild(n,d)  ceil(((double)(n))/((double)(d)))
#define _floord(n,d) floor(((double)(n))/((double)(d)))
#define _max(x,y)    ((x) > (y)? (x) : (y))
#define _min(x,y)    ((x) < (y)? (x) : (y))

#include <stdio.h>
#include <stdlib.h>

#define N_max 256

uint64_t a[N_max][N_max], c[N_max][N_max];

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

#include "crosslayer.h"
#include "HPC.h"


int main()
{
  int i,j, k;
  #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  atom_init(GRANULARITY, false);
  atom_deactivate(0);
  atom_define(1,0, 64);
  #endif

  for (i = 0; i < N_max; i++) {
    for (j = 0; j < N_max; j++) {
      c[i][j] = 0;
      a[i][j] = (i*j*3) / 7;
    }
  }

  int t1, t2, t3, t4, t5, t6;
 register int lbv, ubv;
  HPC perfMon;
 perfMon.startMeasurement();
if (N_max >= 1) {
  for (t1=0;t1<=_floord(N_max-1,128);t1++) {
    for (t2=_ceild(t1-7,8);t2<=_floord(N_max-1,1024);t2++) {
      for (t3=0;t3<=_floord(N_max-1,128);t3++) {
        #ifndef NOATOM
        for(int i = 0 ; i < 128 ; i++)
          atom_map((void*)&a[128*t3][1024*t2], _max(1,1024*8/(1<<GRANULARITY)), 1);
        for(int i = 0 ; i < 128 ; i++)
          atom_map((void*)&c[128*t1][1024*t2], _max(1,1024*8/(1<<GRANULARITY)), 1);
        atom_activate(1);
        #endif
        for (t4=128*t1;t4<=_min(N_max-1,128*t1+127);t4++) {
          for (t5=128*t3;t5<=_min(N_max-1,128*t3+127);t5++) {
            lbv=_max(1024*t2,t4);
            ubv=_min(N_max-1,1024*t2+1023);
            for (t6=lbv;t6<=ubv;t6++) {
              c[t4][t6] += a[t5][t4] * a[t5][t6];;
            }
          }
        }
        #ifndef NOATOM
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
