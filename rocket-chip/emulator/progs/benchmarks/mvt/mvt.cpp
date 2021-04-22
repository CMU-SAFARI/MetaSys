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

#define N 1536
#define M 1536
uint64_t a[N][N], y_1[N+17], y_2[N+19], x1[N+23], z0[N+29], x2[N+31];
void init_array()
{
    int i, j;

    for (i=0; i<N; i++) {
        //y_1[i] = i;
        y_2[i] = i+1;
        x1[i] = 7;
        //x2[i] = 0.0;

        for (j=0; j<M; j++)
            a[i][j] = i+j+1;
    }
    for (i=0; i<M; i++) {
        y_1[i] = i;
        x2[i] = 5;
    }
}

int main()
{
    int i, j, k, l, t;
 #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  atom_init(GRANULARITY, false);
  atom_deactivate(0);
  atom_deactivate(1);
  atom_define(2,0,64);
  atom_define(3,0,64);
  #endif
    init_array() ;

HPC perfMon;
perfMon.startMeasurement();

  int t1, t2, t3, t4, t5;
 register int lbv, ubv;
/* Start of CLooG code */
if ((M >= 1) && (N >= 1)) {
  for (t2=0;t2<=_floord(N-1,262144);t2++) {
    #ifndef NOATOM
    atom_map((void*)&x1[262144*t2], _max(N*8/(1<<GRANULARITY),1), 1);
    #endif
    for (t3=0;t3<=_floord(M-1,128);t3++) {
      #ifndef NOATOM
      atom_map((void*)&y_1[128*t3], _max(1024/(1<<GRANULARITY),1), 2);
      for (int i = 0 ; i < N ; i++)
        atom_map((void*)&a[262144*t2+i][128*t3], _max(1024/(1<<GRANULARITY),1), 3);
      atom_activate(2);
      atom_activate(3);
      #endif
      for (t4=262144*t2;t4<=_min(N-1,262144*t2+262143);t4++) {
        for (t5=128*t3;t5<=_min(M-1,128*t3+127);t5++) {
          x1[t4] = x1[t4] + a[t4][t5] * y_1[t5];;
        }
      }
      #ifndef NOATOM
      atom_deactivate(2);
      atom_deactivate(3);
      #endif
    }
  }
  for (t2=0;t2<=_floord(M-1,262144);t2++) {
    #ifndef NOATOM
    atom_map((void*)&x2[262144*t2], _max(M*8/(1<<GRANULARITY),1), 1);
    #endif
    for (t3=0;t3<=_floord(N-1,128);t3++) {
      #ifndef NOATOM
      atom_map((void*)&y_2[128*t3], _max(N*8/(1<<GRANULARITY),1), 2);
      for (int i = 0 ; i < N ; i++)
        atom_map((void*)&a[128*t3+i][262144*t2], _max(M*8/(1<<GRANULARITY),1), 3);
      atom_activate(2);
      atom_activate(3);
      #endif
      for (t4=262144*t2;t4<=_min(M-1,262144*t2+262143);t4++) {
        for (t5=128*t3;t5<=_min(N-1,128*t3+127);t5++) {
          x2[t4] = x2[t4] + a[t5][t4] * y_2[t5];;
        }
      }
      #ifndef NOATOM
      atom_deactivate(2);
      atom_deactivate(3);
      #endif
    }
  }
}
perfMon.endMeasurement();
perfMon.printStats();
perfMon.printCSV();
}
