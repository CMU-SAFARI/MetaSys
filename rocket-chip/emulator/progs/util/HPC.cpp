#include <stdint.h>
#include <stdio.h>
#include <string>

#include "HPC.h"

HPC::HPC()
{
  for (int i = 0 ; i < 10 ; i++)
    countersSnapshot[i] = 0;
}

HPC::~HPC(){}

uint8_t HPC::cacheThrasher[1024*16];

void HPC::startMeasurement()
{
  for (int i = 0 ; i < 1024*16 ; i++) 
    cacheThrasher[i] = (uint8_t) i+1;
  
  for (int i = 0 ; i < 10 ; i++)
    countersSnapshot[i] = read_csr_safe(counterAddresses[i]);
}

void HPC::endMeasurement()
{
  for (int i = 0 ; i < 10 ; i++)
    countersSnapshot[i] = read_csr_safe(counterAddresses[i]) - countersSnapshot[i];
}

void HPC::printCSV()
{
  for (int i = 0 ; i < 9 ; i++)
    printf("%ld,", countersSnapshot[i]);
  printf("%ld\n", countersSnapshot[9]);
}

void HPC::printStats()
{
  for (int i = 0 ; i < 10 ; i++)
    printf("%s: %ld\n", counterNames[i].c_str(), countersSnapshot[i]);
}
