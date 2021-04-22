
CC := $(RISCV)/bin/riscv64-unknown-elf-gcc
#CXX := g++
CFLAGS = -O3 -DTORONTO -DGRANULARITY=6


INCLUDES = -I../../util  -I../../XMemLib

# define library paths in addition to /usr/lib
#   if I wanted to include libraries not in /usr/lib I'd specify
#   their path using -Lpath, something like:
LFLAGS = -L../../XMemLib

# define any libraries to link into executable:
#   if I want to link in libraries (libx.so or libx.a) I use the -llibname 
#   option, something like (this will link in libmylib.so and libm.so:
LIBS = -lXMemLib -lm
#LIBS = 
# define the C source files
SRCS = ../../util/HPC_C.c *.c

# define the executable file 
MAIN = prm.e

#
# The following part of the makefile is generic; it can be used to 
# build any executable just by changing the definitions above and by
# deleting dependencies appended to the file from 'make depend'
#

.PHONY: depend clean

all:    $(MAIN)

$(MAIN): $(SRCS) 
	$(CC) $(CFLAGS) $(OTHERFLAGS) $(INCLUDES) $(SRCS) $(LFLAGS) $(LIBS) -o $(MAIN)

# this is a suffix replacement rule for building .o's from .c's
# it uses automatic variables $<: the name of the prerequisite of
# the rule(a .cpp file) and $@: the name of the target of the rule (a .o file) 
# (see the gnu make manual section about automatic variables)
clean:
	$(RM) *.o *~ $(MAIN)

depend: $(SRCS)
	makedepend $(INCLUDES) $^
