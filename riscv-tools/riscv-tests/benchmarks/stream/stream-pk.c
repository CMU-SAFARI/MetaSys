#include <stdio.h>
#include <stdlib.h>

#define mcycle 0xb00
#define minstret 0xb02
#define hpmcounter3 0xc03
#define hpmcounter4 0xc04
#define hpmcounter5 0xc05
#define mhpmevent3 0x323
#define mhpmevent4 0x324
#define mhpmevent5 0x325

#define cycle 0xc00
#define instret 0xc02

#define read_csr(reg) ({ unsigned long __tmp; \
  asm volatile ("csrr %0, " #reg : "=r"(__tmp)); \
  __tmp; })

#define write_csr(reg, val) ({ \
  asm volatile ("csrw " #reg ", %0" :: "rK"(val)); })

#define read_csr_safe(reg) ({ register long __tmp asm("a0"); \
  asm volatile ("csrr %0, " #reg : "=r"(__tmp)); \
  __tmp; })

#define NUM_COUNTERS 2
static uintptr_t counters[NUM_COUNTERS];
static char* counter_names[NUM_COUNTERS];

void setStats(int enable)
{
  int i = 0;
  #define READ_CTR(name) do { \
    while (i >= NUM_COUNTERS) ; \
    uintptr_t csr = read_csr(name); \
    if (!enable) { csr -= counters[i]; counter_names[i] = #name; } \
    counters[i++] = csr; \
  } while (0)

  READ_CTR(cycle);
  READ_CTR(instret);

#undef READ_CTR
}

//#pragma GCC push_options
//#pragma GCC optimize ("O0")
int main()
{
  // Try to allocate X bytes of space
  uint32_t* a = (uint32_t*) malloc(1024*1024);
  uint32_t* b = (uint32_t*) malloc(1024*1024);
  uint32_t* c = (uint32_t*) malloc(1024*1024);
  int i = 0;
  uint64_t acc = 0;
  uint32_t set_event = (uint32_t) 0x202;
  // write_csr(mhpmevent4, (uint32_t) 0x102);
  // write_csr(mhpmevent5, set_event);

  for( ; i < 1024 * 256 ; i += 4)
  {
    a[i] = i;
    b[i] = i%7;
    c[i] = i%16;
    // float c = 35 * 1.9;
    // float d = c * 7.2;
  }
  printf("Initialized arrays\n");

  uint32_t misses = read_csr_safe(hpmcounter5);
  uint32_t misses_better = read_csr_safe(hpmcounter4);
  setStats(1);
  for(i = 0 ; i < 1024 * 256; i += 4)
  {
    a[i] = b[i] + c[i];
    // float c = 35 * 1.9;
    // float d = c * 7.2;
  }
  setStats(0);
  misses = read_csr_safe(hpmcounter5) - misses;
  misses_better = read_csr_safe(hpmcounter4) - misses_better;

  printf("D$ misses: %d, better: %d, acc: %ld\n", misses, misses_better, acc);
  printf("Cycles: %d - Ret insts: %d\n", counters[0], counters[1]);

  for(i = 0 ; i < 1024*128 ; i += 4)
  {
    printf("%d", a[i]);
  }
}
//#pragma GCC pop_options
