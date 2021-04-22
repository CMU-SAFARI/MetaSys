#include <math.h>
#define __ceild(n,d)  ceil(((double)(n))/((double)(d)))
#define __floord(n,d) floor(((double)(n))/((double)(d)))
#define __max(x,y)    ((x) > (y)? (x) : (y))
#define __min(x,y)    ((x) < (y)? (x) : (y))

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include "HPC.h"
#include "crosslayer.h"

//each matrix is 2048*2048*8 B = 32MB
#define M 2048
#define N 2048
#define K 2048
#define alpha 1
#define beta 1

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

#pragma declarations
uint64_t (*A)[K];
uint64_t (*B)[N];
uint64_t (*C)[N];
#pragma enddeclarations

void init_array()
{
    int i, j;

    for (i=0; i<N; i++) {
        for (j=0; j<N; j++) {
            A[i][j] = (i + j);
            B[i][j] = (i*j);
            C[i][j] = 0.0;
        }
    }
}

int main()
{
    int createSize = 16;
    scanf ("%d",&createSize);
    int i, j, k;
    A = (uint64_t (*)[2048]) malloc(sizeof *A * M);
    B = (uint64_t (*)[2048]) malloc(sizeof *B * K);
    C = (uint64_t (*)[2048]) malloc(sizeof *C * M);
    printf("Init Array\n");
    init_array();

    uint32_t attributeA = 64;
    uint32_t attributeB = 64;
    uint32_t attributeC = 1;

    uint32_t mapSizeC = __max((256*sizeof(uint64_t))/(1<<GRANULARITY),1); 
    uint32_t mapSizeB = __max((128*sizeof(uint64_t))/(1<<GRANULARITY),1);
    uint32_t mapSizeA = __max((128*sizeof(uint64_t))/(1<<GRANULARITY),1);

    HPC perfMon;

    #ifdef NOATOM  
    atom_init(GRANULARITY, true);
    #else
    atom_init(GRANULARITY, false);
    atom_define(1, 0, 64);      // Property for array A
    atom_define(2, 0, 64);      // Property for array B
    atom_define(3, 0, 1);       // Property for array C
    atom_deactivate(0);
    atom_activate(1);
    atom_activate(2);
    atom_deactivate(3);
    #endif

    int iter = 0;
    int t1, t2, t3, t4, t5, t6;  
    printf("TEST BEGIN\n");
    perfMon.startMeasurement();
    if ((K >= 1) && (M >= 1) && (N >= 1)) {
        for (t1=0;t1<=__floord(M-1,16) && iter < 1; t1++,iter++) {
            for (t2=0;t2<=__floord(N-1,256);t2++) {
                #ifndef NOATOM
                #ifndef LOOKUPONLY
                // Loop to map the working set of array C
                for(int i = 0 ; i < 16 ; i++)
                    atom_map((void*)&(C[i+t1*16][256*t2]), mapSizeC, 3);
                #endif
                #endif
                // END Loop to map working set
                for (t3=0;t3<=__floord(K-1,128);t3++) {
                    #ifndef NOATOM
                    #ifndef LOOKUPONLY
                    // Loop to map the working set of array B
                    for(int i = 0 ; i < 256 ; i++)
                        atom_map((void*)&(B[256*t2+i][128*t3]), mapSizeB, 2);
                    // Loop to map the working set of array A                   
                    for(int i = 0 ; i < 16 ; i++)
                        atom_map((void*)&(A[16*t1+i][128*t3]), mapSizeA, 1);
                    #endif
                    #endif
                    // END Loop to map working set
                    for (t4=16*t1;t4<=__min(M-1,16*t1+15);t4++) {
                        for (t5=256*t2;t5<=__min(N-1,256*t2+255);t5++) {
                            for (t6=128*t3;t6<=__min(K-1,128*t3+127);t6++) {
                                C[t4][t5] = beta*C[t4][t5] + alpha*A[t4][t6] * B[t5][t6];
                            }
                        }
                    }
                }
            }
        }
    }
    perfMon.endMeasurement();
    printf("TEST FINISH\n");
    perfMon.printStats();
    perfMon.printCSV();
    return 0;
}