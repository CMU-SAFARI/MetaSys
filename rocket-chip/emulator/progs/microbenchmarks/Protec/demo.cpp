#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "crosslayer.h"

// We attac but also protec the first d-word in sta_ubr_cuk
int main()
{
  printf("Start Test\n");
  uint32_t empty_prop[16];
  for(int i = 0 ; i < 16 ; i++)
    empty_prop[i] = 0;
  atom_define_bulk(0, empty_prop, 16);
  printf("Atom Defined\n");
  atom_init(6,false);
  printf("Atom Initialized\n");
  atom_define(1, 0, 0xff); // protect first d-word
  atom_define(1, 1, 0x00); // do not protect some of it d-word
  volatile uint8_t* sta_ubr_cuk;
  sta_ubr_cuk = (uint8_t*) malloc(1024*1024*2);
  volatile uint8_t b = sta_ubr_cuk[1024*1024+4096*3];
  atom_map((void*)sta_ubr_cuk, 1, 1);
  atom_select(1);
  volatile uint8_t a = sta_ubr_cuk[3];
  printf("WORKS 1\n");
  sta_ubr_cuk[8] = 7;
  printf("WORKS 2\n");
  sta_ubr_cuk[6] = 7;
  printf("SHOULD not work 3\n");
}
