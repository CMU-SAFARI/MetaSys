/* For copyright information, see olden_v1.0/COPYRIGHT */

#include "tsp.h"
#include <stdio.h>
#define conquer_thresold 150  /* tsp() will use conquer for problems <= conquer_thresold */
extern int flag;

#include "crosslayer.h"
#include "HPC_C.h"
#ifndef GRANULARITY
#define GRANULARITY 6
#endif


int main(int argc,char *argv[])
{
  #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  uint32_t atom_props[16] = {0};
  atom_define_bulk(0, atom_props, 16);
  atom_init(GRANULARITY, 0);
  #endif

  Tree t;
  int num;
 
  num=dealwithargs(argc,argv);

  chatting("Building tree of size %d\n",num);
  t=build_tree(num,0,0,NumNodes,0,1,0,1);
  if (!flag) chatting("Past build\n");
  if (flag) chatting("newgraph\n");
  if (flag) chatting("newcurve pts\n");

  printf("Call tsp(t, %d, %d)\n", conquer_thresold, NumNodes); 

  hpcInit();
  hpcStartMeasurement();
  tsp(t,conquer_thresold, NumNodes);
  hpcEndMeasurement();

  //if (flag) print_list(t);
  if (flag) chatting("linetype solid\n");
  hpcPrintStats();
  hpcPrintCSV();
  return 0;
}
