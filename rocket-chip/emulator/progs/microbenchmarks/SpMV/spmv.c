#include <stdlib.h>
#include <stdio.h>
#include "matrix.h"
#include <stdint.h>
#include "XMemLib.h"
#include "HPC.h"

int main(int argc, char* argv[])
{


        int size;
        int nnz_percentage;
        char *path;
            
        if(argc == 3)
        {
        size = atoi(argv[1]);
        nnz_percentage = atoi(argv[2]);  
        }
        else{

        path = argv[1];
        }



        printf("Compute SpMv using CSR\n");
        struct csr csr;
        csr = read_csr(path);
        size = csr.size;
        int *x_vector;
        int *b;
        x_vector = (int*) malloc (sizeof(int)*size);
        b        = (int*) malloc (sizeof(int)*size);

        for(int i = 0; i < size; i++)
        {
            x_vector[i] = 1;
            b[i] = 1;
        }

            printf("Begin test\n");
            HPC perfMon;

            

            uint32_t atomattribs[16];
            for(int i = 0 ; i < 16 ; i++) atomattribs[i] = 96;

            #ifndef NOATOM
                Atom a1((void*) csr.row_ptr, 0, GRANULARITY, atomattribs);
                a1.map((size*sizeof(int))/(1<<GRANULARITY));
                Atom a2((void*) csr.col_ptr, 0, GRANULARITY, atomattribs);
                a2.map((csr.row_ptr[size]*sizeof(uint32_t))/(1<<GRANULARITY));
                Atom a3((void*) x_vector, 0, GRANULARITY, atomattribs);
                a3.map((size*sizeof(int))/(1<<GRANULARITY));
                Atom a4((void*) b, 0, GRANULARITY, atomattribs);
                a4.map((size*sizeof(int))/(1<<GRANULARITY));
            #endif


            perfMon.startMeasurement();
            for(int i = 0; i < size; i++)
            {
            
                for( int j = csr.row_ptr[i] ; j< csr.row_ptr[i+1] ; j++){
                    

                    b[i] += x_vector[csr.col_ptr[j]] * csr.val[j];     
                }

            }

            perfMon.endMeasurement();
            printf("End test\n");
            perfMon.printStats();
            perfMon.printCSV();


        return 0;

}

