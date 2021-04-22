#include <math.h>
#define _ceild(n,d)  ceil(((double)(n))/((double)(d)))
#define _floord(n,d) floor(((double)(n))/((double)(d)))
#define _max(x,y)    ((x) > (y)? (x) : (y))
#define _min(x,y)    ((x) < (y)? (x) : (y))

#include <stdio.h>
#include <stdlib.h>

#define N_max 256

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

#include "crosslayer.h"
#include "HPC.h"

uint64_t a[N_max][N_max], b[N_max][N_max], c[N_max][N_max];

void dsloop()
{
    int t1, t2, t3, t4, t5, t6;
  for (t1=0;t1<=_floord(N_max-1,128);t1++) {
    for (t2=_ceild(t1-1,2);t2<=_floord(N_max-1,256);t2++) {
      for (t3=0;t3<=_floord(N_max-1,64);t3++) {
        #ifndef NOATOM
        for(int i = 0 ; i < 64 ; i++)
          atom_map((void*)&b[64*t3][256*t2], _max(1,256*8/(1<<GRANULARITY)), 1);
        for(int i = 0 ; i < 64 ; i++)
          atom_map((void*)&a[64*t3][256*t2], _max(1,256*8/(1<<GRANULARITY)), 1);
        atom_activate(1);
        #endif
        for (t4=128*t1;t4<=_min(N_max-1,128*t1+127);t4++) {
          for (t5=_max(256*t2,t4);t5<=_min(N_max-1,256*t2+255);t5++) {
            for (t6=64*t3;t6<=_min(N_max-1,64*t3+63);t6++) {
              c[t4][t5] += a[t6][t4] * b[t6][t5] + b[t6][t4] * a[t6][t5];;
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

int main()
{
  int i,j;
  #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  atom_init(GRANULARITY, false);
  atom_deactivate(0);
  uint64_t diff = &(b[1][0]) - &(b[0][0]);
  atom_define(1,0,(int) diff);
  #endif

  for (i = 0; i < N_max; i++) {
    for (j = 0; j < N_max; j++) {
      c[i][j] = 0;
      a[i][j] = (1+i*j*32)/(N_max);
      b[i][j] = (1+i*j*3)/(N_max);
    }
  }



 HPC perfMon;
 perfMon.startMeasurement();
dsloop();
perfMon.endMeasurement();
perfMon.printStats();
perfMon.printCSV();
return c[6][13];
}
