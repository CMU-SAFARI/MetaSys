#include <iostream>
#include <stdlib.h>
#include <time.h>

#include "HPC.h"
#include "XMemLib.h"

#define HORIZONTAL_ATOM_ID  0
#define VERTICAL_ATOM_ID    1
#ifndef GRANULARITY
#define GRANULARITY 9
#endif

using namespace std;


int main(int argc, char*argv[])
{
  uint8_t unnecessaryArray[64] = {0};
  uint32_t attributes[16] = {0};
  uint32_t createSize = 16;
  cin>>createSize;
  #ifndef NOATOM
  Atom a1(unnecessaryArray, 0, GRANULARITY);
  #endif

  int totalRuns           = 100000;
  int iterationsPerCreate = 100;
  cin>>iterationsPerCreate;
  int mapSize             = 4096 / (1 << GRANULARITY);
  if (mapSize == 0)
    mapSize = 1;

  srand(1337);

  for(int i = 0 ; i < 16 ; i++)
    attributes[i] = rand();
  for(int i = 0 ; i < 64 ; i++)
    unnecessaryArray[i] = rand();
  
  HPC perfMon;
  cout << "TEST BEGIN" << endl;
  int arrIdx = 0;
  perfMon.startMeasurement();
  for (int i = 0 ; i < totalRuns ; i++)
  {
    for(int i = 0 ; i < createSize ; i++)
      attributes[i] += i;
    a1.mapAttributes(attributes,createSize);
    a1.map(mapSize);
    a1.unmap(mapSize);
  }
  perfMon.endMeasurement();
  cout << "TEST FINISH" << endl;
  int sum = 0;
  for (int i = 0 ; i < 64 ; i++)
    sum += unnecessaryArray[i];
  printf("%d/n",sum);
  for(int i = 0 ; i < 16 ; i++)
    printf("%d",attributes[i]);
  printf("\n");
  perfMon.printStats();
  perfMon.printCSV();
}