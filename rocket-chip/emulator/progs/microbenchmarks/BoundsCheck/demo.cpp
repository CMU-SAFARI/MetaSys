#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "crosslayer.h"

int main()
{
  atom_init(20,false);
  volatile uint8_t sta_ubr_cuk[1024*1024*2];
  atom_map((void*)sta_ubr_cuk, 1, 2);
  volatile int b = sta_ubr_cuk[1024*1024+4096*3];
  atom_select(2);
  volatile int a = sta_ubr_cuk[1024];
  printf("THIS SHALL WORK\n");
  atom_select(2);
  sta_ubr_cuk[1024*1024+4096*3] = 7;
  printf("THIS SHALLNT WORK\n");
}