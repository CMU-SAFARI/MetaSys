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

#define N 2000

uint64_t A[N][N];
uint64_t B[N][N];
uint64_t x[N];
uint64_t tmp[N];
uint64_t y[N];

void gesum_loop()
{
      uint64_t alpha = 43532;
    uint64_t beta = 12313;
  int t1, t2, t3, t4, t5;
 register int lbv, ubv;
if (N >= 1) {
  for (t2=0;t2<=_floord(N-1,128);t2++) {
    #ifndef NOATOM
    atom_map((void*)&y[128*t2], _max(1,1024/(1<<GRANULARITY)), 1);
    #endif
    for (t3=0;t3<=_floord(N-1,128);t3++) {
      #ifndef NOATOM
        for(int i = 0 ; i < 128 ; i++)
          atom_map((void*)&B[128*t2+i][128*t3], _max(1,1024/(1<<GRANULARITY)), 2);
        atom_map((void*)&x[128*t3], _max(1,1024/(1<<GRANULARITY)), 3);
        atom_activate(2);
        atom_activate(3);
        #endif
      for (t4=128*t2;t4<=_min(N-1,128*t2+127);t4++) {
        for (t5=128*t3;t5<=_min(N-1,128*t3+127);t5++) {
          y[t4] = B[t4][t5] * x[t5] + y[t4];;
        }
      }
      #ifndef NOATOM
      atom_deactivate(2);
      atom_deactivate(3);
      #endif
    }
  }
  for (t2=0;t2<=_floord(N-1,128);t2++) {
    #ifndef NOATOM
        atom_map((void*)&tmp[128*t2], _max(1,1024/(1<<GRANULARITY)), 4);
        #endif
    for (t3=0;t3<=_floord(N-1,128);t3++) {
      #ifndef NOATOM
        for(int i = 0 ; i < 128 ; i++)
          atom_map((void*)&A[128*t2+i][128*t3], _max(1,1024/(1<<GRANULARITY)), 5);
        atom_map((void*)&x[128*t3], _max(1,1024/(1<<GRANULARITY)), 3);
        atom_activate(5);
        atom_activate(3);
        #endif
      for (t4=128*t2;t4<=_min(N-1,128*t2+127);t4++) {
        for (t5=128*t3;t5<=_min(N-1,128*t3+127);t5++) {
          tmp[t4] = A[t4][t5] * x[t5] + tmp[t4];;
        }
      }
      #ifndef NOATOM
      atom_deactivate(5);
      atom_deactivate(3);
      #endif
    }
  }
  for (t2=0;t2<=_floord(N-1,128);t2++) {
    #ifndef NOATOM
        atom_map((void*)&y[128*t2], _max(1,1024/(1<<GRANULARITY)), 1);
        atom_map((void*)&tmp[128*t2], _max(1,1024/(1<<GRANULARITY)), 4);
        atom_activate(1);
        atom_activate(4);
    #endif
    lbv=128*t2;
    ubv=_min(N-1,128*t2+127);
    for (t3=lbv;t3<=ubv;t3++) {
      y[t3] = alpha * tmp[t3] + beta * y[t3];;
    }
    #ifndef NOATOM
      atom_deactivate(1);
      atom_deactivate(4);
    #endif
  }
}
}

int main(){
   #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  atom_init(GRANULARITY, false);
  atom_deactivate(0);
  atom_deactivate(1);
  atom_deactivate(4);
  atom_define(2,0,64);
  atom_define(1,0,64);
  atom_define(4,0,64);
  atom_define(5,0,64);
  atom_define(3,0,64);
  #endif
    int i,j;



    for (i = 0; i < N; i++)
    {
        x[i] = i;
        for (j = 0; j < N; j++) {
            A[i][j] = _max(((uint64_t)i*j) / N, 1);
            B[i][j] = _max(((uint64_t)i*j) / N, 1);
        }
    }

    for (i = 0; i < N; i++) {
        tmp[i] = 0;
        y[i] = 0;
    }
    HPC perfMon;
    perfMon.startMeasurement();
  gesum_loop();
perfMon.endMeasurement();
perfMon.printStats();
perfMon.printCSV();
}
