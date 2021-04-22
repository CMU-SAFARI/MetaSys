/* For copyright information, see olden_v1.0/COPYRIGHT */

/* main.c
 *
 * By:  Martin C. Carlisle
 * 6/16/94
 *
 * main routine for the Power Pricing problem
 * adapted from code by:  Steve Lumetta, Sherry Li, and Ismail Khalil
 * University of California at Berkeley
 *
 */

#include "power.h"
#include <stdio.h>

#include "crosslayer.h"
#include "HPC_C.h"
#ifndef GRANULARITY
#define GRANULARITY 6
#endif

/* Domain of thetaR->P map is 0.65 to 1.00 [index*0.01+0.65] */
long map_P[36] =
{8752, 8446, 8107,
 7776, 7455, 7146,
 6847, 6558, 6279,
 6008, 5746, 5493,
 5247, 5008, 4777,
 4553, 4335, 4123,
 3918, 3718, 3524,
 3335, 3152, 2973,
 2799, 2629, 2464,
 2303, 2147, 1994,
 1844, 1699, 1557,
 1418, 1283, 1151};

#define      MIN_THETA_R       650
#define      PER_INDEX_R       10
#define      MAX_THETA_R       9950

/* Domain of thetaI->Q map is 0.130 to 0.200 [index*0.002+0.130] */
long map_Q[36] =
{1768, 1706, 1637,
 1569, 1504, 1441,
 1380, 1321, 1265,
 1210, 1157, 1105,
 1055, 1007, 960,
 915, 871, 828,
 787, 747, 707,
 669, 632, 596,
 561, 527, 494,
 462, 430, 399,
 369, 340, 312,
 284, 257, 230};

#define      MIN_THETA_I       13
#define      PER_INDEX_I       2
#define      MAX_THETA_I       199
int main(int argc,char *argv[])
{
  Root r;
  int i,finished=0;
  long d_theta_R,d_theta_I;
  #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  uint32_t atom_props[16] = {0};
  atom_define_bulk(0, atom_props, 16);
  atom_init(GRANULARITY, 0);
  #endif

  printf("Past initialization\n");

  /* initial pass */
  r = build_tree();
  printf("Built tree\n");
  Compute_Tree(r);
  printf("COMPUTED TREE\n");
  
  r->last.P = r->D.P;
  
  r->last.Q = r->D.Q;
  
  r->last_theta_R = r->theta_R;
  
  r->last_theta_I = r->theta_I;
  
  r->theta_R = 7;
  
  r->theta_I = 14;
  hpcInit();
  hpcStartMeasurement();
  int maxloops=0;
  while (!finished) {
    Compute_Tree(r);
    //printf("TR=%4.2f, TI=%4.2f, P0=%4.2f, Q0=%4.2f\n",
           //r->theta_R,r->theta_I,r->D.P,r->D.Q);
    
    if (/*(((*r)->D.P/10000 - (*r)->theta_R) < ROOT_EPSILON &&
        ((*r)->D.Q/10000 - (*r)->theta_I) < ROOT_EPSILON) ||*/
        maxloops > 40) {
      finished = 1;
    } else {
      maxloops++;
      
      i = (int)((r->theta_R - MIN_THETA_R) / PER_INDEX_R);
      if (i<0) i=0;
      if (i>35) i=35;
      
      d_theta_R = -(r->theta_R - r->D.P/10000) /
        (1 - (map_P[i+1] - map_P[i]) / (PER_INDEX_R * 10000));
      
      
      i = (int)((r->theta_I - MIN_THETA_I) / PER_INDEX_I);
      if (i<0) i=0;
      if (i>35) i=35;
      
      d_theta_I = -(r->theta_I - r->D.Q/10000) /
        (1 - (map_Q[i+1] - map_Q[i]) / (PER_INDEX_I * 10000));
 
      //printf("D TR-%4.2f, TI=%4.2f\n", d_theta_R,d_theta_I);
      
      r->last.P = r->D.P;
      
      r->last.Q = r->D.Q;
      
      r->last_theta_R = r->theta_R;
      
      r->last_theta_I = r->theta_I;
      
      r->theta_R = r->theta_R + d_theta_R;
      
      r->theta_I = r->theta_I + d_theta_I;
    }
  } /* while */
  hpcEndMeasurement();
  hpcPrintStats();
  hpcPrintCSV();
  return 0;
}
