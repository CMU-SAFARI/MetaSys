#include "util.h"

#pragma GCC push_options
#pragma GCC optimize ("O0")

#define read_csr_safe(reg) ({ register long __tmp asm("a0"); \
  asm volatile ("csrr %0, " #reg : "=r"(__tmp)); \
  __tmp; })

int main()
{
  // Try to allocate 64KB space
  uint64_t arr [1024*8];
  int i = 0;
  uint32_t set_event = (uint32_t) 0x202;
  write_csr(mhpmevent4, (uint32_t) 0x102);
  write_csr(mhpmevent5, set_event);
  uint32_t misses = read_csr_safe(hpmcounter5);
  uint32_t misses_better = read_csr_safe(hpmcounter4);
  setStats(1);
  for( ; i<1024*8 ; i += 2)
  {
    arr[i] = arr[i] % 5;
    // float c = 35 * 1.9;
    // float d = c * 7.2;
  }
  setStats(0);
  printf("D$ misses: %d, better: %d\n", (read_csr_safe(hpmcounter5) - misses),
    (read_csr_safe(hpmcounter4) - misses_better));
}
#pragma GCC pop_options
