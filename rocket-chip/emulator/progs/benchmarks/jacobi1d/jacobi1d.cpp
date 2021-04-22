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

#define N 4194304/4
#define T 10

//#define N 64
//#define T 100

uint64_t a[N];
uint64_t b[N];

void init_array()
{
    int j;

    for (j=0; j<N; j++) {
        a[j] = 1;
    }
}

void jacobiloop()
{
 int t1, t2, t3, t4, t5;
 register int lbv, ubv;
/* Start of CLooG code */
if ((N >= 4) && (T >= 1)) {
  for (t1=0;t1<=_floord(T-1,250);t1++) {
    for (t2=_ceild(125*t1-8191,8192);t2<=_min(_floord(2*T+N-3,32768),_floord(500*t1+N+497,32768));t2++) {
      if (t1 <= _floord(32768*t2-N+1,500)) {
        if ((N+1)%2 == 0) {
          a[(N-2)] = b[(N-2)];;
        }
      }
      if (N == 4) {
        for (t3=_max(250*t1,16384*t2-1);t3<=_min(_min(T-1,250*t1+249),16384*t2+16382);t3++) {
          b[2] = 3 * (a[2 -1] + a[2] + a[2 + 1]);;
          a[2] = b[2];;
        }
      }
      t3=_max(_ceild(32768*t2-N+2,2),250*t1);
      t4=32768*t2;
      #ifndef NOATOM
      //pin B
      atom_map((void*)&b[(-2*t3+t4)], _max(1,1024*128/(1<<GRANULARITY)), 2);
      //Pin A
      atom_map((void*)&a[(-2*t3+t4-1)], _max(1,1024*64/(1<<GRANULARITY)), 1);
      //prefetch B
      atom_map((void*)&b[(-2*t3+t4)], _max(1,32768*8/(1<<GRANULARITY)), 2);
       //prefetch A
      atom_map((void*)&a[(-2*t3+t4-1)], _max(1,32768*8/(1<<GRANULARITY)), 1);
      atom_activate(1);
      atom_activate(2);
      #endif
      for (t3=_max(_ceild(32768*t2-N+2,2),250*t1);t3<=_min(_min(_min(_floord(32768*t2-N+32768,2),T-1),250*t1+249),16384*t2-2);t3++) {
        for (t4=32768*t2;t4<=2*t3+N-2;t4++) {
          b[(-2*t3+t4)] = 3 * (a[(-2*t3+t4)-1] + a[(-2*t3+t4)] + a[(-2*t3+t4) + 1]);;
          a[(-2*t3+t4-1)] = b[(-2*t3+t4-1)];;
        }
        a[(N-2)] = b[(N-2)];;
      }
      #ifndef NOATOM
      atom_deactivate(1);
      atom_deactivate(2);
      #endif
      t3=_max(_ceild(32768*t2-N+32769,2),250*t1);
      t4=32768*t2;
      #ifndef NOATOM
      //pin B
      atom_map((void*)&b[(-2*t3+t4)], _max(1,1024*128/(1<<GRANULARITY)), 2);
      //Pin A
      atom_map((void*)&a[(-2*t3+t4-1)], _max(1,1024*64/(1<<GRANULARITY)), 1);
      //prefetch B
      atom_map((void*)&b[(-2*t3+t4)], _max(1,32768*8/(1<<GRANULARITY)), 2);
       //prefetch A
      atom_map((void*)&a[(-2*t3+t4-1)], _max(1,32768*8/(1<<GRANULARITY)), 1);
      atom_activate(1);
      atom_activate(2);
      #endif
      for (t3=_max(_ceild(32768*t2-N+32769,2),250*t1);t3<=_min(_min(T-1,250*t1+249),16384*t2-2);t3++) {
        for (t4=32768*t2;t4<=32768*t2+32767;t4++) {
          b[(-2*t3+t4)] = 3 * (a[(-2*t3+t4)-1] + a[(-2*t3+t4)] + a[(-2*t3+t4) + 1]);;
          a[(-2*t3+t4-1)] = b[(-2*t3+t4-1)];;
        }
      }
      if (N >= 5) {
        for (t3=_max(250*t1,16384*t2-1);t3<=_min(_min(_floord(32768*t2-N+32768,2),T-1),250*t1+249);t3++) {
          b[2] = 3 * (a[2 -1] + a[2] + a[2 + 1]);;
          for (t4=2*t3+3;t4<=2*t3+N-2;t4++) {
            b[(-2*t3+t4)] = 3 * (a[(-2*t3+t4)-1] + a[(-2*t3+t4)] + a[(-2*t3+t4) + 1]);;
            a[(-2*t3+t4-1)] = b[(-2*t3+t4-1)];;
          }
          a[(N-2)] = b[(N-2)];;
        }
      }
      #ifndef NOATOM
      atom_deactivate(1);
      atom_deactivate(2);
      #endif
      t3=_max(_max(_ceild(32768*t2-N+32769,2),250*t1),16384*t2-1);
      t4=2*t3+3;
      #ifndef NOATOM
      //pin B
      atom_map((void*)&b[(-2*t3+t4)], _max(1,1024*128/(1<<GRANULARITY)), 2);
      //Pin A
      atom_map((void*)&a[(-2*t3+t4-1)], _max(1,1024*64/(1<<GRANULARITY)), 1);
      //prefetch B
      atom_map((void*)&b[(-2*t3+t4)], _max(1,32768*8/(1<<GRANULARITY)), 2);
       //prefetch A
      atom_map((void*)&a[(-2*t3+t4-1)], _max(1,32768*8/(1<<GRANULARITY)), 1);
      atom_activate(1);
      atom_activate(2);
      #endif
      for (t3=_max(_max(_ceild(32768*t2-N+32769,2),250*t1),16384*t2-1);t3<=_min(_min(T-1,250*t1+249),16384*t2+16382);t3++) {
        b[2] = 0.33333 * (a[2 -1] + a[2] + a[2 + 1]);;
        for (t4=2*t3+3;t4<=32768*t2+32767;t4++) {
          b[(-2*t3+t4)] = 3 * (a[(-2*t3+t4)-1] + a[(-2*t3+t4)] + a[(-2*t3+t4) + 1]);;
          a[(-2*t3+t4-1)] = b[(-2*t3+t4-1)];;
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
    int t, i, j;

    init_array();

HPC perfMon;
perfMon.startMeasurement();

 jacobiloop();
perfMon.endMeasurement();
perfMon.printStats();
perfMon.printCSV();
}
