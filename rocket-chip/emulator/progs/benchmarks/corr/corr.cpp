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

#define N 768
#define M 768

int float_n = 1;
int eps = 5;

uint32_t stddev[M + 1];
uint32_t data[M + 1][N + 1];
uint32_t mean[M + 1];
uint32_t symmat[M + 1][M + 1];

void init_array()
{
  int i, j;

  for (i=0; i<M; i++)
    for (j=0; j<N; j++)
      data[i][j] = _max((i*j+1)/N,1);  
}

int dbg_ctr = 0;

void corr_main()
{
  #ifndef NOATOM
  atom_define(1, 0, 64);
  atom_define(2, 0, 64);
  #endif

  int t1, t2, t3, t4, t5, t6, t7;
 register int lbv, ubv;
 int iter = 0;
/* Start of CLooG code */
if (M >= 2) {
  for (t2=0;t2<=_floord(M-1,128);t2++) {
    for (t3=_ceild(t2-3,4);t3<=_floord(M,512);t3++) {
    for (int i = 0 ; i < 128 ; i++)
      #ifndef NOATOM
      atom_map((void*)&symmat[_max(1,128*t2+i)][_max(512*t3,t4+1)], _max(1,2048/(1<<GRANULARITY)), 1);
      atom_activate(1);
      #endif
      for (t4=_max(1,128*t2);t4<=_min(_min(M-1,128*t2+127),512*t3+510);t4++) {
        lbv=_max(512*t3,t4+1);
        ubv=_min(M,512*t3+511);
        for (t5=lbv;t5<=ubv;t5++) {
          symmat[t4][t5] = 1;
        }
      }
      #ifndef NOATOM
      atom_deactivate(1);
      #endif
    }
  }
  if (N >= 1) {
    for (t2=0;t2<=_floord(M-1,128) &&  iter < 1 ;t2++, iter++) {
      for (t3=_ceild(t2-3,4);t3<=_floord(M,512);t3++) {
        for (t4=0;t4<=_floord(N,256);t4++) {
          t5=_max(1,128*t2);
          t6=_max(512*t3,t5+1);
          //prefetch data big
          #ifndef NOATOM
          for(int i = 0 ; i < 512 ; i++)
            atom_map((void*)&data[t6+i][_max(1,256*t4)], _max(1,1024/(1<<GRANULARITY)), 2);
          //pin lower half of data big data[t6][t7]
          for(int i = 0 ; i < 384 ; i++)
            atom_map((void*)&data[t6+128+i][_max(1,256*t4)], _max(1,1024/(1<<GRANULARITY)), 2);
          // data[t5][t7]
          for(int i = 0 ; i < 128 ; i++)
            atom_map((void*)&data[t5+i][_max(1,256*t4)], _max(1,1024/(1<<GRANULARITY)), 2);
          //symmmat
          for(int i = 0 ; i < 128 ; i++)
            atom_map((void*)&symmat[t5+i][t6], _max(1,2048/(1<<GRANULARITY)), 1);
          atom_activate(2);
          #endif
          for (t5=_max(1,128*t2);t5<=_min(_min(M-1,128*t2+127),512*t3+510);t5++) {
            for (t6=_max(512*t3,t5+1);t6<=_min(M,512*t3+511);t6++) {
              for (t7=_max(1,256*t4);t7<=_min(N,256*t4+255);t7++) {
                dbg_ctr++;
                symmat[t5][t6] += ( data[t5][t7] * data[t6][t7]);;
              }
            }
          }
          #ifndef NOATOM
          atom_deactivate(2);
          #endif
        }
      }
    }
  }
  for (t2=0;t2<=_floord(M-1,128);t2++) {
    #ifndef NOATOM
    for(int i = 0 ; i < 512 ; i++)
      atom_map((void*)&symmat[_max(512*t3,t4+1)][128*t2], 1, 1);
    for(int i = 0 ; i < 128 ; i++)
      atom_map((void*)&symmat[128*t2+i][_max(512*t3,t4+1)], _max(1,2048/(1<<GRANULARITY)), 1);
    atom_deactivate(1);
    #endif
    for (t3=_ceild(t2-3,4);t3<=_floord(M,512);t3++) {
      for (t4=_max(1,128*t2);t4<=_min(_min(M-1,128*t2+127),512*t3+510);t4++) {
        lbv=_max(512*t3,t4+1);
        ubv=_min(M,512*t3+511);
        for (t5=lbv;t5<=ubv;t5++) {
          symmat[t5][t4] = symmat[t4][t5];;
        }
      }
    }
  }
  for (t2=0;t2<=_floord(M-1,128);t2++) {
    lbv=_max(1,128*t2);
    ubv=_min(M-1,128*t2+127);
    for (t3=lbv;t3<=ubv;t3++) {
      symmat[t3][t3] = 1;;
    }
  }
}
}

int main(int argc, char** argv)
{    
  #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  atom_init(GRANULARITY, false);
  atom_deactivate(0);
  #endif
  int i, j, j1, j2;
  // float *mean, *stddev;

  init_array();

  /* Deter_mine mean of column vectors of input data matrix */
  for (j = 1; j <= M; j++)
  {
    mean[j] = 0;
    for (i = 1; i <= N; i++)
      mean[j] += data[i][j];
    mean[j] /= float_n;
  }

  /* Deter_mine standard deviations of column vectors of data matrix. */
  for (j = 1; j <= M; j++)
  {
    stddev[j] = 1;
    for (i = 1; i <= N; i++)
      stddev[j] += (data[i][j] - mean[j]) * (data[i][j] - mean[j]);
    stddev[j] /= float_n;
    stddev[j] /= stddev[j];
    /* The following in an inelegant but usual way to handle
       near-zero std. dev. values, which below would cause a zero-
       divide. */
    stddev[j] = stddev[j] <= eps ? 1 : stddev[j];
  }

  /* Center and reduce the column vectors. */
  for (i = 1; i <= N; i++)
    for (j = 1; j <= M; j++)
    {
      data[i][j] += mean[j];
      data[i][j] /= _max(data[i][j] / float_n * stddev[j],1);
    }

 HPC perfMon;
 perfMon.startMeasurement();
corr_main();
/* End of CLooG code */
perfMon.endMeasurement();
printf("%d\n",dbg_ctr);

perfMon.printStats();
perfMon.printCSV();
}
