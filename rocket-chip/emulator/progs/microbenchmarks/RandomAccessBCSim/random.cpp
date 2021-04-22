#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
extern "C" {
#include "crosslayer.h" 
}
#include "HPC.h"

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

// Copied from https://en.wikipedia.org/wiki/Xorshift
// want to do fast random address generation
uint32_t xorshift32(uint32_t addr)
{
	/* Algorithm "xor" from p. 4 of Marsaglia, "Xorshift RNGs" */
	uint32_t x = addr;
	x ^= x << 13;
	x ^= x >> 17;
	x ^= x << 5;
	return x;
}

int main()
{
  uint32_t arrSize = 2*1024*1024;

  volatile uint32_t* a __attribute__((used)) = (uint32_t*) malloc(arrSize);
  uint32_t* b __attribute__((used)) = (uint32_t*) malloc(arrSize);
  uint32_t* c __attribute__((used)) = (uint32_t*) malloc(arrSize);
  int i = 0;
  uint64_t acc = 0;

  uint32_t mapSize = 1;

  printf("Begin initializing arrays\n");
  for( ; i < 512 ; i += 1)
  {
    a[i] = i;
    b[i] = i%7;
    c[i] = i%16;
  }
  printf("Initialized arrays\n");

  printf("Warmup Run\n");
  for(i = 0 ; i < 512 ; i += 1)
    a[i] = b[i] + c[i];

  printf("Begin test\n");
  HPC perfMon;

  #ifdef NOATOM  
  atom_init(GRANULARITY, true);
  #else
  atom_init(GRANULARITY, false);
  #endif

  uint32_t atomattribs[16];
  for(int i = 0 ; i < 16 ; i++)
    atomattribs[i] = 96;
  printf("We don't have bc ops\n");

  #ifndef NOATOM
  #ifndef LOOKUPONLY
  atom_deactivate(0);
  atom_deactivate(1);
  atom_deactivate(2);
  atom_deactivate(3);
  #endif
  #endif
  uint32_t addr_mask = 512 - 1;
  uint32_t random_addr = xorshift32(1337) & addr_mask;
  perfMon.startMeasurement();
  #ifndef NOATOM
  #ifndef LOOKUPONLY
  atom_map((void*) a, mapSize, 3);
  atom_map((void*) b, mapSize, 1);
  atom_map((void*) c, mapSize, 2);
  #endif
  #endif
  printf("We don't have bc ops\n");
  for(int iter = 0 ; iter < 1 ; iter++)
  {
    for(i = 0 ; i < 512 ; i += 1)
    {
      atom_select(1);
      volatile uint32_t be = b[random_addr];
      atom_select(2);
      volatile uint32_t ce = c[random_addr];
      uint32_t immd = be + ce;
      atom_select(3);
      a[random_addr] = immd;
      random_addr = xorshift32(random_addr) & addr_mask;
    }
  }    
  
  perfMon.endMeasurement();
  printf("End test\n");
  perfMon.printStats();
  perfMon.printCSV();
}
