#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include "crosslayer.h"
#include "HPC.h"

#ifndef GRANULARITY
#define GRANULARITY 9
#endif
int main()
{
  // Element-wise length of each dimension
  int xlen = 64;
  int ylen = 64;
  int zlen = 1024;

  uint32_t *** array = (uint32_t ***) malloc(sizeof(uint32_t**) * xlen);
  /*
  for(int i = 0 ; i < xlen ; i++)
  {
    array[i] = (uint32_t **) malloc(sizeof(uint32_t*) * ylen);
    for(int j = 0 ; j < ylen ; j++)
      array[i][j] = (uint32_t *) malloc(sizeof(uint32_t) * zlen);
  }
  */

  for(int i = 0 ; i < xlen ; i++)
    array[i] = (uint32_t **) malloc(sizeof(uint32_t*) * ylen);

  for(int i = 0 ; i < xlen ; i++)
    for(int j = 0 ; j < ylen ; j++)
      array[i][j] = (uint32_t *) malloc(sizeof(uint32_t) * zlen);

  printf("%p %p %p %p %p\n",&array[0], &array[0][0], &array[1][0], &array[0][0][0], &array[1][0][0]);

  printf("Initialize the array\n");
  srand(time(NULL));
  for (int i = 0 ; i < xlen ; i++)
    for (int j = 0 ; j < ylen ; j++)
      for (int k = 0 ; k < zlen ; k++)
        array[i][j][k] = rand();

    #ifdef NOATOM
    atom_init(GRANULARITY, true);
    #else
    atom_init(GRANULARITY, false);
    #endif
    

  uint64_t acc = 0;
  printf("Warmup run\n");
  for(int i=0 ; i < xlen ; i += 1)
    for(int j=0 ; j < ylen ; j += 1)
      for(int k=0 ; k < zlen ; k += 1)
        acc += array[i][j][k] * k;

  printf("Begin test\n");
  HPC perfMon;
  perfMon.startMeasurement();
  #ifndef NOATOM
  #ifndef LOOKUPONLY
  atom_define(4, 0, 263168*4);
  atom_map((void*) array[0][0], ((uint64_t)xlen)*ylen*zlen*sizeof(uint32_t)/(1<<GRANULARITY), 4);
  atom_activate(4);
  atom_define(1,0,8);
  atom_map((void*) array, 1, 1);
  atom_deactivate(1);
  atom_define(2,0,528*2);
  atom_map((void*) array[0], (xlen*ylen*8)/(1<<GRANULARITY), 2);
  atom_activate(2);
  #endif
  #endif
  for(int iter = 0 ; iter < 5 ; iter++)
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
