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

#define TSTEPS 50
#define LENGTH 128

uint64_t (*c)[LENGTH];
uint64_t (*W)[LENGTH];
uint64_t (*sum_c)[LENGTH][LENGTH];

int main(){
    c = (uint64_t(*)[LENGTH]) malloc(sizeof *c * LENGTH);
    W = (uint64_t(*)[LENGTH]) malloc(sizeof *W * LENGTH);
    sum_c = (uint64_t(*)[LENGTH][LENGTH]) malloc(sizeof *sum_c * LENGTH);

   #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  atom_init(GRANULARITY, false);
  atom_deactivate(0);
  uint64_t distance = &(sum_c[0][1][0]) - &(sum_c[0][0][0]);
  printf("Distance is %d bytes\n", distance);
  atom_define(1,0,(int) distance);
  atom_define(2,0,64);
  #endif

  int iter, i, j, k;
  for (i = 0; i < LENGTH; i++)
    for (j = 0; j < LENGTH; j++) {
      c[i][j] = i*j % 2;
      W[i][j] = _max(1, ((i-j) / LENGTH));
    }

HPC perfMon;
perfMon.startMeasurement();
  uint64_t out_l = 0;
  int t1, t2, t3, t4, t5, t6, t7, t8;
 register int lbv, ubv;
/* Start of CLooG code */
if (TSTEPS >= 1) {
  for (t1=0;t1<=TSTEPS-1;t1++) {
    for (t3=0;t3<=_floord(LENGTH-2,32);t3++) {
      for (t4=t3;t4<=_floord(LENGTH-1,32);t4++) {
        for (t5=32*t3;t5<=_min(_min(LENGTH-2,32*t3+31),32*t4+30);t5++) {
          lbv=_max(32*t4,t5+1);
          ubv=_min(LENGTH-1,32*t4+31);
          #ifndef NOATOM
          for (int i = 0 ; i < ubv ; i++)
            atom_map((void*)&sum_c[t5][_max(32*t4,t5+1 + i)][t5], 1, 1);
          atom_deactivate(1);
          #endif
          for (t6=lbv;t6<=ubv;t6++) {
            sum_c[t5][t6][t5] = 0;;
          }
        }
      }
    }
    for (t3=0;t3<=_floord(LENGTH-1,32);t3++) {
      for (t4=0;t4<=_floord(LENGTH-1,32);t4++) {
        #ifndef NOATOM
        for(int i = 0 ; i < 32 ; i++)
          atom_map((void*)&c[32*t3+i][32*t4], 1, 2);
        atom_deactivate(2);
        #endif
        for (t5=32*t3;t5<=_min(LENGTH-1,32*t3+31);t5++) {
          lbv=32*t4;
          ubv=_min(LENGTH-1,32*t4+31);
          for (t6=lbv;t6<=ubv;t6++) {
            c[t5][t6] = 0;;
          }
        }
      }
    }
    for (t3=0;t3<=_floord(LENGTH-2,32);t3++) {
      for (t4=t3;t4<=_floord(LENGTH-1,32);t4++) {
        for (t5=t3;t5<=t4;t5++) {
          if ((t3 == t4) && (t3 == t5)) {
            //C row prefetch
            #ifndef NOATOM
            for(int i = 0 ; i < 32 ; i++)
              atom_map((void*)&c[32*t3+i][32*t3+1], _max(1, 256/(1<<GRANULARITY)), 2);
            //C column prefetch
            for(int i = 0 ; i < 32 ; i++)
              atom_map((void*)&c[32*t3+1+i][32*t3+2], 1, 2);
            #endif
            for (t6=32*t3;t6<=_min(LENGTH-3,32*t3+29);t6++) {
              c[t6][(t6+1)] = sum_c[t6][(t6+1)][(t6+1)-1] + W[t6][(t6+1)];;
              #ifndef NOATOM
              for(int i = 0 ; i < 32 ; i++)
                atom_map((void*)&sum_c[t6][t6+2+i][t6], _max(1, 256/(1<<GRANULARITY)), 2);
              atom_activate(2);
              #endif
              for (t7=t6+2;t7<=_min(LENGTH-1,32*t3+31);t7++) {
                for (t8=t6+1;t8<=t7-1;t8++) {
                  sum_c[t6][t7][t8] = sum_c[t6][t7][t8 - 1] + c[t6][t8] + c[t8][t7];;
                }
                c[t6][t7] = sum_c[t6][t7][t7-1] + W[t6][t7];;
              }
              #ifndef NOATOM
              atom_deactivate(2);
              #endif
            }

          }
          if ((t4 == t5) && (t4 <= _floord(LENGTH-2,32))) {
            //C row prefetch
            #ifndef NOATOM
            for(int i = 0 ; i < 32 ; i++)
              atom_map((void*)&c[32*t3+i][32*t4], _max(1, 256/(1<<GRANULARITY)), 2);
            //C column prefetch
            for(int i = 0 ; i < 32 ; i++)
              atom_map((void*)&c[32*t4+i][32*t4+1], 1, 2);
            #endif
            for (t6=32*t3;t6<=_min(32*t3+31,32*t4-1);t6++) {
              c[t6][32*t4] = sum_c[t6][32*t4][32*t4-1] + W[t6][32*t4];;
              #ifndef NOATOM
              for(int i = 0 ; i < 32 ; i++)
                atom_map((void*)&sum_c[t6][32*t4+1+i][32*t4-1], _max(1, 256/(1<<GRANULARITY)), 2);
              atom_activate(2);
              #endif
              for (t7=32*t4+1;t7<=_min(LENGTH-1,32*t4+31);t7++) {
                for (t8=32*t4;t8<=t7-1;t8++) {
                  sum_c[t6][t7][t8] = sum_c[t6][t7][t8 - 1] + c[t6][t8] + c[t8][t7];;
                }
                c[t6][t7] = sum_c[t6][t7][t7-1] + W[t6][t7];;
              }
              #ifndef NOATOM
              atom_deactivate(2);
              #endif
            }
          }
          if (t4 >= t5+1) {
            t8=_max(32*t5,t6+1);
            //C row prefetch
            #ifndef NOATOM
            for(int i = 0 ; i < 32 ; i++)
              atom_map((void*)&c[32*t3+i][t8], _max(1, 256/(1<<GRANULARITY)), 2);
            //C column prefetch
            for(int i = 0 ; i < 32 ; i++)
              atom_map((void*)&c[t8+i][32*t4], 1, 2);
            #endif
            for (t6=32*t3;t6<=_min(32*t3+31,32*t5+30);t6++) {
              #ifndef NOATOM
              for(int i = 0 ; i < 32 ; i++)
                atom_map((void*)&sum_c[t6][32*t4+i][_max(32*t5,t6+1)], _max(1, 256/(1<<GRANULARITY)), 2);
              atom_activate(2);
              #endif
              for (t7=32*t4;t7<=_min(LENGTH-1,32*t4+31);t7++) {
                for (t8=_max(32*t5,t6+1);t8<=32*t5+31;t8++) {
                  sum_c[t6][t7][t8] = sum_c[t6][t7][t8 - 1] + c[t6][t8] + c[t8][t7];;
                }
              }
              #ifndef NOATOM
              atom_deactivate(2);
              #endif
            }

          }
          if ((t3 == t4) && (t3 == t5) && (t3 >= _ceild(LENGTH-31,32))) {
            c[(LENGTH-2)][(LENGTH-1)] = sum_c[(LENGTH-2)][(LENGTH-1)][(LENGTH-1)-1] + W[(LENGTH-2)][(LENGTH-1)];;
          }
          if ((t3 == t4) && (t3 == t5) && (t3 <= _floord(LENGTH-32,32))) {
            c[(32*t3+30)][(32*t3+31)] = sum_c[(32*t3+30)][(32*t3+31)][(32*t3+31)-1] + W[(32*t3+30)][(32*t3+31)];;
          }
          if ((32*t4 == LENGTH-1) && (32*t5 == LENGTH-1)) {
            for (t6=32*t3;t6<=32*t3+31;t6++) {
              if ((LENGTH+31)%32 == 0) {
                c[t6][(LENGTH-1)] = sum_c[t6][(LENGTH-1)][(LENGTH-1)-1] + W[t6][(LENGTH-1)];;
              }
            }
          }
        }
      }
    }
    out_l += c[0][LENGTH - 1];;
  }
}
perfMon.endMeasurement();
perfMon.printStats();
perfMon.printCSV();
}
