#include <math.h>
#define _ceild(n,d)  ceil(((double)(n))/((double)(d)))
#define _floord(n,d) floor(((double)(n))/((double)(d)))
#define _max(x,y)    ((x) > (y)? (x) : (y))
#define _min(x,y)    ((x) < (y)? (x) : (y))


#include <stdio.h>
#include <stdlib.h>

#define N 512

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

#include "crosslayer.h"
#include "HPC.h"

uint64_t A[N][N];
uint64_t Q[N][N];
uint64_t R[N][N];

int main() {


    #ifdef NOATOM
    atom_init(GRANULARITY, true);
    #else
    atom_init(GRANULARITY, false);
    atom_deactivate(0);
    uint64_t diff = &(A[1][0]) - &(A[0][0]);
    atom_define(1, 0, (int)diff*2);
    uint64_t diff2 = &(Q[1][0]) - &(Q[0][0]);
    atom_define(2, 0, (int)diff2*2);
    #endif

    int i, j;

    for (i = 0; i < N; i++)
        for (j = 0; j < N; j++) {
            A[i][j] = ((uint64_t) i*j) / N;
            Q[i][j] = ((uint64_t) i*(j+1)) / N;
        }
    for (i = 0; i < N; i++)
        for (j = 0; j < N; j++)
            R[i][j] = ((uint64_t) i*(j+2)) / N;
    int k;
    uint64_t nrm;

    for (k = 0; k < N; k++) {
        for (j = k + 1; j < N; j++) {
            R[k][j] = k*j*7;
        }
    }
  int t1, t2, t3, t4, t5, t6;
 register int lbv, ubv;
 int iter = 0;
  HPC perfMon;
 perfMon.startMeasurement();
/* Start of CLooG code */
if (N >= 1) {
  for (t1=0;t1<=N-1 && iter < 10; t1++, iter++) {
    nrm = 1;
    //prefetch A
    #ifndef NOATOM
    for(int i = 0 ; i < N ; i++)
      atom_map((void*)&A[0][t1], 1, 1);
    #endif
    for (t3=0;t3<=N-1;t3++) {
      nrm += A[t3][t1] * A[t3][t1];;
    }
    R[t1][t1] = (nrm+724873)/nrm;
    //prefetch A and Q
    for (t3=0;t3<=_floord(N-1,32);t3++) {
      lbv=32*t3;
      ubv=_min(N-1,32*t3+31);
      for (t4=lbv;t4<=ubv;t4++) {
        Q[t4][t1] = A[t4][t1] / R[t1][t1];;
      }
    }
    #ifndef NOATOM
    atom_deactivate(1);
    #endif
    if (t1 <= N-2) {
      for (t3=_ceild(t1-30,32);t3<=_floord(N-1,32);t3++) {
        #ifndef NOATOM
        atom_map((void*)&R[t1][_max(32*t3,t1+1)], _max(1,32*8/(1<<GRANULARITY)), 3);
        #endif
        for (t4=0;t4<=_floord(N-1,1024);t4++) {
          #ifndef NOATOM
          for(int i = 0 ; i < 1024 ; i++)
            atom_map((void*)&A[1024*t4][_max(32*t3,t1+1)], _max(1,32*8/(1<<GRANULARITY)), 1);
          for(int i = 0 ; i < 1024 ; i++)
            atom_map((void*)&Q[1024*t4][t1], 1, 2);
          atom_activate(1);
          atom_activate(2);
          #endif
          for (t5=_max(32*t3,t1+1);t5<=_min(N-1,32*t3+31);t5++) {
            for (t6=1024*t4;t6<=_min(N-1,1024*t4+1023);t6++) {
              R[t1][t5] += Q[t6][t1] * A[t6][t5];;
            }
          }
          #ifndef NOATOM
          atom_deactivate(1);
          atom_deactivate(2);
          #endif
        }
      }
    }
    if (t1 <= N-2) {
      for (t3=_ceild(t1-30,32);t3<=_floord(N-1,32);t3++) {
          //R[t1][t5]
        #ifndef NOATOM
        atom_map((void*)&R[t1][_max(32*t3,t1+1)], _max(1,32*8/(1<<GRANULARITY)), 3);
        #endif
        for (t4=0;t4<=_floord(N-1,1024);t4++) {
          #ifndef NOATOM
          for(int i = 0 ; i < 1024 ; i++)
            atom_map((void*)&A[1024*t4][_max(32*t3,t1+1)], _max(1,32*8/(1<<GRANULARITY)), 1);
          for(int i = 0 ; i < 1024 ; i++)
            atom_map((void*)&Q[1024*t4][t1], 1, 2);
          atom_activate(1);
          atom_activate(2);
          #endif
          for (t5=_max(32*t3,t1+1);t5<=_min(N-1,32*t3+31);t5++) {
            lbv=1024*t4;
            ubv=_min(N-1,1024*t4+1023);
            for (t6=lbv;t6<=ubv;t6++) {
              A[t6][t5] = A[t6][t5] - Q[t6][t1] * R[t1][t5];;
            }
          }
          #ifndef NOATOM
          atom_deactivate(1);
          atom_deactivate(2);
          #endif
        }
      }
    }
  }
}
perfMon.endMeasurement();
perfMon.printStats();
perfMon.printCSV();
}
