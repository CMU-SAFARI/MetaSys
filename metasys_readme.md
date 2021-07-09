# How to develop a new use case of MetaSys
## Describe prefetcher and challenges
The prefetcher in the MetaSys system is a stride prefetcher that makes use of hints provided by the atom abstraction. The programmer conveys access pattern information of a data structure to the hardware via atoms using MetaSysLib. 
When the CPU accesses a data structure, the prefetcher performs an atom lookup to fetch the id of the atom linked to that data structure. Then it accesses the PAT to fetch access pattern information and use it to perform a prefetch. 
In our example, the prefetcher uses <stride> values as hints. The programmer specifies the stride length between consecutive accesses to a data structure. The prefetcher uses these stride lengths to calculate prefetch addresses.  
## How to load the PAT of each component
Programmers can instantiate or modify atoms using **the attribute functions in the MetaSysLib**. *Funct1* is used to partially modify attributes of atoms. *Funct2* is used to bulk initialize an atom with multiple attributes.   
## How to snoop requests from the buses
The prefetcher module resides in-between the rocket core and the L1D$. The rocket core accesses L1D$ using virtual addresses. L1D$ performs the address translation and propagates the requests in the memory hierarchy, if needed. Since atom lookups are performed using physical addresses, the prefetcher needs to be aware of the physical addresses that are generated (by translating virtual addresses to physical addresses) in the L1D$. The interface between the rocket core and the L1D$ provides this functionality. The prefetcher snoops these physical addresses as they are transmitted from L1D$ back to the core.
## How to use the ALB/Translation Structure
We provide two distinct ALB designs. The first one is implemented as a direct-mapped cache. The second one is a fully-associative cache for atom ids (FA-ALB). FA-ALB makes use of Linear Feedback Shift Registers to employ a random replacement mechanism.


## Generating RoCC Designs
We modified rocket-chip configs to generate RoCC enabled designs. Here is a minimal configuration that can be used to instantiate a RoCC in the system. This is defined in `rocket-chip/src/main/scala/subsystem/Configs.scala`.
```
class RoCCEnabledConfig() extends Config((site, here, up) => {
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(
      rocc = Seq(RoCCParams(
        opcodes = OpcodeSet.custom2, // set of instructions this co-processor can execute
        generator = (p: Parameters) => // anything that extends LazyRoCC
        {
          val atomAddressMap = LazyModule(
            new AtomAddressMapAccelerator(albSize = albSize,
                                          enablePrefetch = enablePrefetch,
                                          lookupOnly = lookupOnly,
                                          atomGranularity = atomGranularity)(p))
          atomAddressMap
        },
        nPTWPorts = 1 // how many page table walker ports our module needs
        )
      )
    )
  }
})
```
You may now simply generate rocket-chips with RoCCs by merging this config with the existing ones. The following changes will let us generate a rocket-chip SoC with small rocket cores along with a RoCC. System level configurations can be found in `rocket-chip/src/main/scala/system/Configs.scala`, which is where we define our RoCC enabled rocket-chip design.
```
class RoCCEnabledSmallRocket extends Config(new RoCCEnabledConfig ++ new DefaultSmallConfig)
```
You can now simulate this design as usual by navigating into `rocket-chip/emulator` and running `make CONFIG=RoCCEnabledSmallRocket`.
## Forwarding Instruction to RoCC

We use RISC-V's custom instructions to perform metadata management operations. A subset of these instructions are recognized as RoCC instructions and are transferred from the rocket core to the RoCC for execution after they are decoded. For more detail on how RoCC designs operate, we refer the reader to a copy of [Anuj Rao's RoCC Doc V2](https://docs.google.com/document/d/19KX8W5UqXbPGLwPhm5eyJKtzn7OQ7lo0C_p0PUlEg44/edit).
  
## Changes in the RoCC - FSM (Signals, States)
Point to specific files and code of RoCC FSM. Give example

We build on the existing example RoCC design and implement the _AtomAddressMapController_ (i.e., AMC). The AMC executes MetaSys ISA Instructions (e.g., CREATE, MAP/UNMAP) to access and/or modify metadata. The AMC implements a simple state machine to access the Metadata Mapping Mable (MMT) and the Metadata Table (PMT).

As an example, the code snippet below shows what the AMC does upon receiving a CREATE (fatom\_load) instruction. The AMC transitions from _idle_ to _fillpat\_single_ state and stores the properties expressed by the metadata (attribute) and the ID of the metadata in registers. The write-enable (_wen_) input of the PMT is set after the state transitions to _fillpat\_single_ and its _addr_ (ID) and _wdata_ (properties) input signals set accordingly.
```
when(cmd.fire() && (is_fatom_load) && ((state === s_idle) && !isDummy.B))
{
  attribute := cmd.bits.rs2
  atomoffset := cmd.bits.rs1
  state := s_fillpat_single
}

...
  
pat.io.wen := ((state === s_readpat) && io.mem.resp.valid ) || (state === s_fillpat_single)
pat.io.addr := Mux((state === s_fillpat_single),atom_id,io.mem.resp.bits.data(7,0))  
pat.io.wdata := Mux((state === s_fillpat_single),attribute,io.mem.resp.bits.data(31,8))
pat.io.ren := (state === s_send_pat_cache) && io.mem.req.fire() || state === s_load_pat  
pat.io.attindex := atomoffset

```

# Adding new system calls to the RISC-V Proxy Kernel

System calls require the use of **traps** to switch the execution context to privileged mode (e.g. proxy kernel).
## How to perform a trap
Performing a trap requires the use of the special assembly instruction **ecall**. 

Registers a0-a7 define the arguments of the trap. 
To perform a system call through the proxy kernel, the system call identifier is loaded into register a7. 
Let's see the following example :

```c
asm {mv a0, arg1
     mv a1, arg2
     li a7, 95 // Load system call identifier to a7
     ecall); // Perform trap
```

Executing this assembly function results in switching to privileged execution mode (proxy kernel). Register a7 holds the value 95 and the proxy kernel executes system call 95 with arguments coming from registers a0 and a1.



## Example of new system call 
In this example, we are going to add a new system call to the proxy kernel and demonstrate its use in an application. 


We need to make the following modifications to the following files of the riscv toolchain.

1. riscv-tools/riscv-pk/pk/syscall.h

Define the new system call and its identifier and add it in the definitions. 

```c
..
..
#define SYS_open 1024
#define SYS_create atom 95
..
..
```

2. riscv-tools/riscv-pk/pk/syscall.c


Perform the following modifications to define the syscall name to syscall function mapping.

```c
/*
..
*/

long do_syscall(long a0, long a2, long a3, long a4, long a5, unsigned long n){

   const static void* syscall_table[] = {
      //  Name   - Function
      [SYS_exit] = sys_exit, 
      [SYS_create_atom] = sys_crt_atom
   }
}

/*
..
*/
```


Then define the syscall function with the corresponding arguments. 

```c
/*
..
*/

static int sys_stub_nosys()
{
  return -ENOSYS;
}

static int sys_crt_atom(unsigned int atomID, unsigned int offset, long attribute, unsigned int mapMultiple, int a4, int a5, int n){
  
   /* Functionality of new system call */

}

/*
..
*/
```


