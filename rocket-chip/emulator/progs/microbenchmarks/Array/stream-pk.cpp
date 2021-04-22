#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "crosslayer.h"
#include "HPC.h"

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

int main()
{
  int arrSize = 32*1024*1024;

  uint32_t* a __attribute__((used)) = (uint32_t*) malloc(arrSize);
  uint32_t* b __attribute__((used)) = (uint32_t*) malloc(arrSize);
  uint32_t* c __attribute__((used)) = (uint32_t*) malloc(arrSize);
  int i = 0;
  uint64_t acc = 0;

  uint32_t mapSize = arrSize/(1<<GRANULARITY) == 0 ? 1 : arrSize/(1<<GRANULARITY);

  printf("Begin initializing arrays\n");
  for( ; i < arrSize/4 ; i += 1)
  {
    a[i] = i;
    b[i] = i%7;
    c[i] = i%16;
  }
  printf("Initialized arrays\n");

  printf("Warmup Run\n");
  for(i = 0 ; i < arrSize/4 ; i += 1)
    a[i] = b[i] + c[i];

  printf("Begin test\n");
  HPC perfMon;
  uint32_t atomattribs[16];
  for(int i = 0 ; i < 16 ; i++)
    atomattribs[i] = 64;

  #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  atom_init(GRANULARITY, false);
  #endif
    

  #ifndef NOATOM
  #ifndef LOOKUPONLY
  atom_define(0, 0, 0);
  atom_define(1, 0, 64);
  atom_define(2, 0, 64);
  atom_activate(1);
  atom_activate(2);
  atom_deactivate(0);
  #endif
  #endif
  perfMon.startMeasurement();
  #ifndef NOATOM
  #ifndef LOOKUPONLY
  atom_map((void*) b, mapSize, 1);
  atom_map((void*) c, mapSize, 2);
  atom_map((void*) a, mapSize, 0);
  #endif
  #endif
  for(int iter = 0 ; iter < 20 ; iter++)
    for(i = 0 ; i < arrSize/4 ; i += 1)
      a[i] = b[i] + c[i];
  
  perfMon.endMeasurement();
  printf("End test\n");
  perfMon.printStats();
  perfMon.printCSV();
}
