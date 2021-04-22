#include <math.h>
#define _ceild(n,d)  ((n)/(d) + 1)
#define _floord(n,d) ((n)/(d))
#define _max(x,y)    ((x) > (y)? (x) : (y))
#define _min(x,y)    ((x) < (y)? (x) : (y))

#include <stdio.h>
#include <stdlib.h>

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

#include "crosslayer.h"
#include "HPC.h"

#define M 192

uint64_t cos1[M][M+13];
uint64_t temp2d[M][M+23];
uint64_t block[M][M+43];
uint64_t sum2[M][M];

void init_array()
{
    int i, j;

    for (i=0; i<M; i++) {
        for (j=0; j<M; j++) {
            cos1[i][j] = (1+(i*j)%1024)/2;
            block[i][j] = (1+(i*j)%1024)/2;
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
  #endif
    init_array();

  int t1, t2, t3, t4, t5, t6, t7;
 register int lbv, ubv;

 HPC perfMon;
 perfMon.startMeasurement();
/* Start of CLooG code */
if (M >= 1) {
  for (t2=0;t2<=_floord(M-1,128);t2++) {
    for (t3=0;t3<=_floord(M-1,128);t3++) {
      for (t4=128*t2;t4<=_min(M-1,128*t2+127);t4++) {
        for (t5=128*t3;t5<=_min(M-1,128*t3+127);t5++) {
          sum2[t4][t5] = 0;;
        }
      }
    }
  }
  for (t2=0;t2<=_floord(M-1,128);t2++) {
    for (t3=0;t3<=_floord(M-1,128);t3++) {
      for (t4=128*t2;t4<=_min(M-1,128*t2+127);t4++) {
        for (t5=128*t3;t5<=_min(M-1,128*t3+127);t5++) {
          temp2d[t4][t5] = 0;;
        }
      }
    }
  }
  for (t2=0;t2<=_floord(M-1,128);t2++) {
      for (t3=0;t3<=_floord(M-1,128);t3++) {
          for (t4=0;t4<=_floord(M-1,2048);t4++) {
              #ifndef NOATOM
              for(int i = 0 ; i < 128 ; i++)
                atom_map((void*)&cos1[128*t3][2048*t4], _max(1,2048*8/(1<<GRANULARITY)), 1);
              for(int i = 0 ; i < 128 ; i++)
                atom_map((void*)&block[128*t2][2048*t4], _max(1,2048*8/(1<<GRANULARITY)), 1);
              atom_activate(1);
              #endif
              for (t5=128*t2;t5<=_min(M-1,128*t2+127);t5++) {
                  for (t6=128*t3;t6<=_min(M-1,128*t3+127);t6++) {
                      for (t7=2048*t4;t7<=_min(M-1,2048*t4+2047);t7++) {
                          //printf("t5 = %d , t6 = %d. t7 = %d \n ", t5,t6,t7);
                          temp2d[t5][t6] = temp2d[t5][t6] + block[t5][t7] * cos1[t6][t7];;
                      }
                  }
              }
              #ifndef NOATOM
              atom_deactivate(1);
              #endif
          }
      }
  }
  for (t2=0;t2<=_floord(M-1,128);t2++) {
      for (t3=0;t3<=_floord(M-1,128);t3++) {
          for (t4=0;t4<=_floord(M-1,2048);t4++) {
              #ifndef NOATOM
              for(int i = 0 ; i < 128 ; i++)
                atom_map((void*)&cos1[128*t2][2048*t4], _max(1,2048*8/(1<<GRANULARITY)), 1);
              atom_activate(1);
              #endif
              for (t5=128*t2;t5<=_min(M-1,128*t2+127);t5++) {
                  for (t6=128*t3;t6<=_min(M-1,128*t3+127);t6++) {
                      for (t7=2048*t4;t7<=_min(M-1,2048*t4+2047);t7++) {
                          sum2[t5][t6] = sum2[t5][t6] + cos1[t5][t7] * temp2d[t7][t6];;
                      }
                  }
              }
              #ifndef NOATOM
              atom_deactivate(1);
              #endif
          }
      }
  }
  for (t2=0;t2<=_floord(M-1,128);t2++) {
      for (t3=0;t3<=_floord(M-1,128);t3++) {
          #ifndef NOATOM
          for(int i = 0 ; i < 128 ; i++)
            atom_map((void*)&sum2[128*t2][128*t3], _max(1,128*8/(1<<GRANULARITY)), 1);
          atom_activate(1);
          #endif
          for (t4=128*t2;t4<=_min(M-1,128*t2+127);t4++) {
              for (t5=128*t3;t5<=_min(M-1,128*t3+127);t5++) {
                  block[t4][t5] = (sum2[t4][t5]);;
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
