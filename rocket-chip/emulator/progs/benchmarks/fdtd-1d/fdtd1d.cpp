#include <math.h>
#define _ceild(n,d)  ((n)/(d) + 1)
#define _floord(n,d) ((n)/(d))
#define _max(x,y)    ((x) > (y)? (x) : (y))
#define _min(x,y)    ((x) < (y)? (x) : (y))


#include <stdio.h>
#include <stdlib.h>

#define coeff2 2
#define coeff1 5

#define N 131072/2
//#define N 800000
//#define N 64
#define T 1024
//#define T 100

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

#include "crosslayer.h"
#include "HPC.h"

uint64_t h[N];
uint64_t e[N+1];

void init_array()
{
    int i, j;

        for (j=0; j<N; j++) {
            h[j] = ((uint64_t)j);
            e[j] = ((uint64_t)j);
        }
}

int main()
{
    #ifdef NOATOM
    atom_init(GRANULARITY, true);
    #else
    atom_init(GRANULARITY, false);
    atom_deactivate(0);
    atom_define(1,0, 64);
    #endif
    int t, i, j, k, l;

    init_array();

  int t1, t2, t3, t4, t5;
 register int lbv, ubv;
   HPC perfMon;
 perfMon.startMeasurement();
/* Start of CLooG code */
if ((N >= 1) && (T >= 1)) {
  for (t1=0;t1<=_floord(T,250);t1++) {
    for (t2=_ceild(125*t1-16383,16384);t2<=_min(_floord(T+N,32768),_floord(250*t1+N+249,32768));t2++) {
      if ((N >= 2) && (t1 <= _floord(32768*t2-N,250)) && (t2 >= _ceild(N+1,32768))) {
        h[(N-1)] = h[(N-1)] - coeff2*(e[(N-1)+1]-e[(N-1)]);;
      }
      if (N == 1) {
        for (t3=_max(_max(1,250*t1),32768*t2-1);t3<=_min(_min(T,250*t1+249),32768*t2+32766);t3++) {
          h[0] = h[0] - coeff2*(e[0 +1]-e[0]);;
        }
      }
      if (N >= 2) {
        for (t3=_max(_max(1,250*t1),32768*t2-N+1);t3<=_min(_min(T,250*t1+249),32768*t2-N+32767);t3++) {
          for (t4=_max(32768*t2,t3+1);t4<=t3+N-1;t4++) {
            e[(-t3+t4)] = e[(-t3+t4)] - coeff1*(h[(-t3+t4)]-h[(-t3+t4)-1]);;
            h[(-t3+t4-1)] = h[(-t3+t4-1)] - coeff2*(e[(-t3+t4-1)+1]-e[(-t3+t4-1)]);;
          }
          h[(N-1)] = h[(N-1)] - coeff2*(e[(N-1)+1]-e[(N-1)]);;
        }
      }
      t3=_max(_max(1,250*t1),32768*t2-N+32768);
      t4=_max(32768*t2,t3+1);
      #ifndef NOATOM
      atom_map((void*)&e[-t3+t4], _max(1,1024*256/(1<<GRANULARITY)), 1);
      atom_map((void*)&h[-t3+t4-1], _max(1,1024*256/(1<<GRANULARITY)), 1);
      atom_activate(1);
      #endif
      for (t3=_max(_max(1,250*t1),32768*t2-N+32768);t3<=_min(_min(T,250*t1+249),32768*t2+32766);t3++) {
        for (t4=_max(32768*t2,t3+1);t4<=32768*t2+32767;t4++) {
          e[(-t3+t4)] = e[(-t3+t4)] - coeff1*(h[(-t3+t4)]-h[(-t3+t4)-1]);;
          h[(-t3+t4-1)] = h[(-t3+t4-1)] - coeff2*(e[(-t3+t4-1)+1]-e[(-t3+t4-1)]);;
        }
      }
      #ifndef NOATOM
      atom_deactivate(1);
      #endif
    }
  }
}
perfMon.endMeasurement();
perfMon.printStats();
perfMon.printCSV();
}
