#ifndef HPC_HH
#define HPC_HH
#include <stdint.h>
#include <stdio.h>
#include <string>
/** Helper class used to measure performance
 */
class HPC
{
  public:
  HPC();
  ~HPC();

  void startMeasurement();
  void endMeasurement();
  void printStats();
  void printCSV();

  private:
  static uint8_t cacheThrasher[16*1024];
  static const int cycle         = 0xc00;
  static const int instret       = 0xc02;
  static const int hpmcounter3   = 0xc03;
  static const int hpmcounter4   = 0xc04;
  static const int hpmcounter5   = 0xc05;
  static const int hpmcounter6   = 0xc06;
  static const int hpmcounter7   = 0xc07;
  static const int hpmcounter8   = 0xc08;
  static const int hpmcounter9   = 0xc09;
  static const int hpmcounter10  = 0xc0a;

  const int counterAddresses[10] = 
  {
    cycle, instret, hpmcounter3, hpmcounter4,
    hpmcounter5, hpmcounter6, hpmcounter7, hpmcounter8,
    hpmcounter9, hpmcounter10
  };

  std::string counterNames[10] =
  {
    "cycles", "instructions", "accelerator misses",
    "total misses", "alb requests", "alb hits",
    "dtlb misses", "alb misses", "n/a", "n/a"
  };

  uint64_t countersSnapshot[10];

  static uint64_t read_csr(const int reg)
  { 
    uint64_t __tmp;
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
      exit(1);
    }
    return __tmp;
  }

  static uint64_t read_csr_safe(const int reg)
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
      exit(1);
    }
    return __tmp;
  }

};
#endif