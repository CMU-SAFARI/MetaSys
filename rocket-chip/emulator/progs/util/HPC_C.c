#include <stdint.h>
#include <stdio.h>

#include "HPC_C.h"

uint64_t __hpc_read_csr_safe(const int reg)
{  
  register uint64_t __tmp asm("a0");
  switch(reg)
  {
    case cycle:
    asm volatile ("csrr %0, %1" : "=r"(__tmp) : "n"(cycle));
    break;
    case instret:
    asm volatile ("csrr %0, %1" : "=r"(__tmp) : "n"(instret));
    break;
    case hpmcounter3:
    asm volatile ("csrr %0, %1" : "=r"(__tmp) : "n"(hpmcounter3));
    break;
    case hpmcounter4:
    asm volatile ("csrr %0, %1" : "=r"(__tmp) : "n"(hpmcounter4));
    break;
    case hpmcounter5:
    asm volatile ("csrr %0, %1" : "=r"(__tmp) : "n"(hpmcounter5));
    break;
    case hpmcounter6:
    asm volatile ("csrr %0, %1" : "=r"(__tmp) : "n"(hpmcounter6));
    break;
    case hpmcounter7:
    asm volatile ("csrr %0, %1" : "=r"(__tmp) : "n"(hpmcounter7));
    break;
    case hpmcounter8:
    asm volatile ("csrr %0, %1" : "=r"(__tmp) : "n"(hpmcounter8));
    break;
    case hpmcounter9:
    asm volatile ("csrr %0, %1" : "=r"(__tmp) : "n"(hpmcounter9));
    break;
    case hpmcounter10:
    asm volatile ("csrr %0, %1" : "=r"(__tmp) : "n"(hpmcounter10));
    break;
    default:
    printf("This should not happen!\n");
  }
  return __tmp;
}
int counterAddresses[10] = 
{
  cycle, instret, hpmcounter3, hpmcounter4,
  hpmcounter5, hpmcounter6, hpmcounter7, hpmcounter8,
  hpmcounter9, hpmcounter10
};

char counterNames[10][64] =
{
  "cycles", "instructions", "accelerator misses",
  "total misses", "alb requests", "alb hits",
  "dtlb misses", "alb misses", "n/a", "n/a"
};

uint64_t countersSnapshot[10];

void hpcInit()
{
  for (int i = 0 ; i < 10 ; i++)
    countersSnapshot[i] = 0;
}

void hpcStartMeasurement()
{
  for (int i = 0 ; i < 1024*16 ; i++) 
    cacheThrasher[i] = (uint8_t) i+1;
  
  for (int i = 0 ; i < 10 ; i++)
    countersSnapshot[i] = __hpc_read_csr_safe(counterAddresses[i]);
}

void hpcEndMeasurement()
{
  for (int i = 0 ; i < 10 ; i++)
    countersSnapshot[i] = __hpc_read_csr_safe(counterAddresses[i]) - countersSnapshot[i];
}

void hpcPrintCSV()
{
  for (int i = 0 ; i < 9 ; i++)
    printf("%ld,", countersSnapshot[i]);
  printf("%ld\n", countersSnapshot[9]);
}

void hpcPrintStats()
{
  for (int i = 0 ; i < 10 ; i++)
    printf("%s: %ld\n", counterNames[i], countersSnapshot[i]);
}
