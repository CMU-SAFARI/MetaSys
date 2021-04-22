#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "crosslayer.h"
#include "HPC.h"


#ifndef GRANULARITY
#define GRANULARITY 20
#endif 






int main(){



uint32_t* a __attribute__((used)) = (uint32_t*) malloc(sizeof(uint32_t)*100);
uint32_t* b __attribute__((used)) = (uint32_t*) malloc(sizeof(uint32_t)*100);

atom_init(GRANULARITY, false);


printf("Address of A = %d \n",a);
printf("Address of B = %d \n",b);



for (int i=0; i<100; i++)
{
  a[i] = rand()%100;
}

for(int i=0; i<100; i++) b[i] = 0;

uint32_t mapSize = 1;
printf("Begin Test \n");

HPC perfMon;

atom_deactivate(0);
atom_activate(1);

uint64_t atomattribs[16];
atomattribs[0] = (uint64_t) a;
atomattribs[1] = (uint64_t) b;
atomattribs[2] = (uint64_t) 100;

atom_define_bulk(1, (uint32_t*) atomattribs, 6);
atom_map((void*) a,1,1);

perfMon.startMeasurement();
int x;
for(int i=0; i< 10; i+=1) x+=b[a[i]];
perfMon.endMeasurement();
printf("x= %d \n",x);
printf("End test\n");
perfMon.printStats();
perfMon.printCSV();


}
