#include "pk.h"
#include "mmap.h"
#include "boot.h"
#include "elf.h"
#include "mtrap.h"
#include "frontend.h"
#include <stdbool.h>
#include "file.h"
#include <sys/stat.h>
#include <string.h>
#include <fcntl.h>
#include "at.h"
#include "translator.h"

#define ISSPACE(c)  ((c) == ' ' || ((c) >= '\t' && (c) <= '\r'))
#define ISASCII(c)  (((c) & ~0x7f) == 0)
#define ISUPPER(c)  ((c) >= 'A' && (c) <= 'Z')
#define ISLOWER(c)  ((c) >= 'a' && (c) <= 'z')
#define ISALPHA(c)  (ISUPPER(c) || ISLOWER(c))
#define ISDIGIT(c)  ((c) >= '0' && (c) <= '9')

int n_atoi(char *str) {

	int res = 0;
	int mul = 1;

	char *ptr;

	for (ptr = str + strlen(str) - 1; ptr >= str; ptr--) {

		if (*ptr < '0' || *ptr > '9')
			continue;

        printk("Char =  %c \n", *ptr);
		res += (*ptr - '0') * mul;
		mul *= 10;
	}
	return (res);
}

elf_info current;
long disabled_hart_mask;

static void handle_option(const char* s)
{
  switch (s[1])
  {
    case 's': // print cycle count upon termination
      current.cycle0 = 1;
      break;

    case 'p': // disable demand paging
      demand_paging = 0;
      break;

    default:
      panic("unrecognized option: `%c'", s[1]);
      break;
  }
}

#define MAX_ARGS 64
typedef union {
  uint64_t buf[MAX_ARGS];
  char* argv[MAX_ARGS];
} arg_buf;

static size_t parse_args(arg_buf* args)
{
  long r = frontend_syscall(SYS_getmainvars, va2pa(args), sizeof(*args), 0, 0, 0, 0, 0);
  kassert(r == 0);
  uint64_t* pk_argv = &args->buf[1];
  // pk_argv[0] is the proxy kernel itself.  skip it and any flags.
  size_t pk_argc = args->buf[0], arg = 1;
  for ( ; arg < pk_argc && *(char*)(uintptr_t)pk_argv[arg] == '-'; arg++)
    handle_option((const char*)(uintptr_t)pk_argv[arg]);

  for (size_t i = 0; arg + i < pk_argc; i++)
    args->argv[i] = (char*)(uintptr_t)pk_argv[arg + i];
  return pk_argc - arg;
}

static void init_tf(trapframe_t* tf, long pc, long sp)
{
  memset(tf, 0, sizeof(*tf));
  tf->status = (read_csr(sstatus) &~ SSTATUS_SPP &~ SSTATUS_SIE) | SSTATUS_SPIE;
  tf->gpr[2] = sp;
  tf->epc = pc;
}

static void run_loaded_program(size_t argc, char** argv, uintptr_t kstack_top)
{
  // copy phdrs to user stack
  size_t stack_top = current.stack_top - current.phdr_size;
  memcpy((void*)stack_top, (void*)current.phdr, current.phdr_size);
  current.phdr = stack_top;

  // copy argv to user stack
  for (size_t i = 0; i < argc; i++) {
    size_t len = strlen((char*)(uintptr_t)argv[i])+1;
    stack_top -= len;
    memcpy((void*)stack_top, (void*)(uintptr_t)argv[i], len);
    argv[i] = (void*)stack_top;
  }

  // copy envp to user stack
  const char* envp[] = {
    // environment goes here
  };
  size_t envc = sizeof(envp) / sizeof(envp[0]);
  for (size_t i = 0; i < envc; i++) {
    size_t len = strlen(envp[i]) + 1;
    stack_top -= len;
    memcpy((void*)stack_top, envp[i], len);
    envp[i] = (void*)stack_top;
  }

  // align stack
  stack_top &= -sizeof(void*);

  struct {
    long key;
    long value;
  } aux[] = {
    {AT_ENTRY, current.entry},
    {AT_PHNUM, current.phnum},
    {AT_PHENT, current.phent},
    {AT_PHDR, current.phdr},
    {AT_PAGESZ, RISCV_PGSIZE},
    {AT_SECURE, 0},
    {AT_RANDOM, stack_top},
    {AT_NULL, 0}
  };

  // place argc, argv, envp, auxp on stack
  #define PUSH_ARG(type, value) do { \
    *((type*)sp) = (type)value; \
    sp += sizeof(type); \
  } while (0)

  #define STACK_INIT(type) do { \
    unsigned naux = sizeof(aux)/sizeof(aux[0]); \
    stack_top -= (1 + argc + 1 + envc + 1 + 2*naux) * sizeof(type); \
    stack_top &= -16; \
    long sp = stack_top; \
    PUSH_ARG(type, argc); \
    for (unsigned i = 0; i < argc; i++) \
      PUSH_ARG(type, argv[i]); \
    PUSH_ARG(type, 0); /* argv[argc] = NULL */ \
    for (unsigned i = 0; i < envc; i++) \
      PUSH_ARG(type, envp[i]); \
    PUSH_ARG(type, 0); /* envp[envc] = NULL */ \
    for (unsigned i = 0; i < naux; i++) { \
      PUSH_ARG(type, aux[i].key); \
      PUSH_ARG(type, aux[i].value); \
    } \
  } while (0)

  STACK_INIT(uintptr_t);

  if (current.cycle0) { // start timer if so requested
    current.time0 = rdtime();
    current.cycle0 = rdcycle();
    current.instret0 = rdinstret();
  }


/* XMEM ALLOCATE SEGMENT FOR AMU TABLE */
//  int entries = (1<<6);
//  int PAGES_AMU = entries/4096;
//  uintptr_t amu_start;
//  uintptr_t amu_end;
//  amu_start = __page_alloc();
//  for(int i = 0; i < (PAGES_AMU-1) ; i++){
//    amu_end = __page_alloc();
//  }

//  printk("Amu_start = %x \n", amu_start);

/* PASS AMU TABLE TO THE XMEM LIB */
//  asm volatile ("amu_clear_acr");
//  asm volatile ("amu_write_acr %[amu_start]\n\t"::
//              [amu_start] "r" (amu_start));
 
/* =================================== */



  trapframe_t tf;
  init_tf(&tf, current.entry, stack_top);
  __clear_cache(0, 0);
  write_csr(sscratch, kstack_top);
  start_user(&tf);
}

/*
att_table create_gat (size_t argc, arg_buf buf)
{


  att_table gat,pat;
  printk("[Kernel] Address of GAT = %p \n ", &gat );

  int i, natoms;
  char atom_size[4], size;
  file_t* input_file;

  input_file = file_open(buf.argv[argc-1], O_RDONLY, 0);
  size = file_read(input_file, atom_size, 4);

  natoms = n_atoi(atom_size);

  init_table(natoms, &gat);

  printk("[Kernel] Size_read = %d Number of atoms = %d \n", size, natoms);

  char atom_char[4];
	char stride[4];
  int  atom = 0;

	uint32_t atoms[5];

  for(i=0; i< (natoms); i++){
        size += file_read(input_file, atom_char, 4);
				file_read(input_file, stride, 4);
				uint8_t atom_id   = n_atoi(atom_char);
				uint8_t stride_i  = n_atoi(stride);
				uint32_t atom = stride_i;
        create_insert_entry(&gat,atom,i);
				atoms[i] = atom;
        atoms[i] << 8;
        atoms[i] |= atom_id;
				printk("[Kernel] i= %d Atom = %d size= %d \n", i,  atom, size);
  }

  translate_gat_to_pat(&pat , &gat); // TODO

  // pat = gat; //Temporary FIXME

  printk("[Kernel] i= %d Atom = %d size= %d \n", i,  atom, size);

  printk("[Kernel] Address of PAT = %p\n", &pat);

  void* address;
  address= &gat;

  uint64_t phys_addr;
  //doTranslate(phys_addr, atoms);

  printk("[Kernel] Virtual  Address of PAT = %p\n", atoms);
  //printk("[Kernel] Physical Address of PAT = %p\n", phys_addr);


  asm volatile ("fence\n\t");

 
  asm volatile ("fatom %0,%1\n\t"
		 :
		 :"r" (atoms), "r"(natoms)
		 :
		 );

  
 
  printk("[Kernel] Address of PAT filled up \n");

  return pat;

}
*/
static void rest_of_boot_loader(uintptr_t kstack_top)
{
  arg_buf args;
  size_t argc = parse_args(&args);
  if (!argc)
    panic("tell me what ELF to load!");

  long phdrs[128];
  current.phdr = (uintptr_t)phdrs;
  current.phdr_size = sizeof(phdrs);
  load_elf(args.argv[0], &current);

  // att_table pat;
  // pat = create_gat(argc,args);

  run_loaded_program(argc, args.argv, kstack_top);
}

void boot_loader(uintptr_t dtb)
{
  extern char trap_entry;

	// enable hpm counters
	// asm volatile ("csrw " #0x324 ", %0" :: "rK"(0x102));
	// asm volatile ("csrw " #0x325 ", %0" :: "rK"(0x202));
	write_csr(0x323, (uint32_t) 0x0102);
	write_csr(0x324, (uint32_t) 0x0202);
	write_csr(0x325, (uint32_t) 0x0402);
	write_csr(0x326, (uint32_t) 0x0802);
	write_csr(0x327, (uint32_t) 0x1002);
	write_csr(0x328, (uint32_t) 0x2002);
	write_csr(0x329, (uint32_t) 0x4002);
	write_csr(0x32a, (uint32_t) 0x8002);

  write_csr(stvec, &trap_entry);
  write_csr(sscratch, 0);
  write_csr(sie, (1<<12));
  set_csr(sstatus, SSTATUS_SUM);
  file_init();
  enter_supervisor_mode(rest_of_boot_loader, pk_vm_init(), 0);
}

void boot_other_hart(uintptr_t dtb)
{
  // stall all harts besides hart 0
  while (1)
    wfi();
}
