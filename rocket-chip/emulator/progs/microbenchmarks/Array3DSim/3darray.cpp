#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include "XMemLib.h"
#include "HPC.h"

#ifndef GRANULARITY
#define GRANULARITY 9
#endif
int main()
{
  // Element-wise length of each dimension
  int xlen = 8;
  int ylen = 8;
  int zlen = 64;

  uint32_t *** array = (uint32_t ***) malloc(sizeof(uint32_t**) * xlen);

  for(int i = 0 ; i < xlen ; i++)
    array[i] = (uint32_t **) malloc(sizeof(uint32_t*) * ylen);

  for(int i = 0 ; i < xlen ; i++)
    for(int j = 0 ; j < ylen ; j++)
      array[i][j] = (uint32_t *) malloc(sizeof(uint32_t) * zlen);

  printf("Initialize the array\n");
  srand(time(NULL));
  for (int i = 0 ; i < xlen ; i++)
    for (int j = 0 ; j < ylen ; j++)
      for (int k = 0 ; k < zlen ; k++)
        array[i][j][k] = i+j+k;

  #ifdef NOATOM
  int init_sacrifice = 0;
  Atom initializer((void*) &init_sacrifice,0,GRANULARITY,true);
  #else
  int init_sacrifice = 0;
  Atom initializer((void*) &init_sacrifice,0,GRANULARITY);
  #endif

  uint64_t acc = 0;
  printf("Warmup run\n");
  for(int i=0 ; i < xlen ; i += 1)
    for(int j=0 ; j < ylen ; j += 1)
      for(int k=0 ; k < zlen ; k += 1)
        acc += array[i][j][k] * k;

  printf("Begin test\n");
  HPC perfMon;
  uint32_t atomattribs[16];
  for(int i = 0 ; i < 16 ; i++)
    atomattribs[i] = 263168*2;
    #ifndef NOATOM
  #ifndef LOOKUPONLY
  Atom a2((void*) array[0][0], 4, GRANULARITY, atomattribs);
  a2.activate();
  #endif
  #endif
  perfMon.startMeasurement();
  #ifndef NOATOM
  Atom a3((void*) array, 1, GRANULARITY, (unsigned int)0, 8*4);
  Atom a4((void*) array[0], 2, GRANULARITY, (unsigned int)0, 528*4);
  a3.map(1);
  a3.activate();
  a4.map(1);
  a4.activate();
  a2.map(1);
  #endif
  for (int k = 0 ; k < zlen ; k++)
    for (int j = 0 ; j < ylen ; j++)
      for (int i = 0 ; i < xlen ; i++)
        acc += array[i][j][k];
  perfMon.endMeasurement();
  printf("End test\n");
  perfMon.printStats();
  printf("Acc:%ld\n",acc);
  perfMon.printCSV();
}
