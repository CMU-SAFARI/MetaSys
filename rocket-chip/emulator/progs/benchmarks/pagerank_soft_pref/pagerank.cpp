#include <cstdlib>
#include <cstdio>
#include "crosslayer.h"
#include "HPC.h"

#ifndef GRANULARITY
#define GRANULARITY 20
#endif

struct csr{

   int* row_ptr;
   int* col_ptr;
   int* val; 
   int size;
   int vertices;
   int edges; 
};

typedef struct csr csr;
int stride;
HPC perfMon;
csr csr_graph;

struct csr read_graph(char *path)
{
        printf("Read graph %s\n",path);
        FILE *fd;
        fd = fopen(path,"r");

        int rows, columns, nnz;

        fscanf(fd,"%d",&rows);
        fscanf(fd,"%d",&nnz);
        printf("Rows = %d Non-zero = %d \n",rows,nnz);
        struct csr csr_out;
        csr_out.vertices = rows;
        csr_out.edges = nnz; 
        int total_nnz = 0 ;
        csr_out.row_ptr = (int *) malloc((rows+1)*sizeof(int));
        csr_out.col_ptr = (int *) malloc(nnz*sizeof(int));
        csr_out.val = (int*) malloc(nnz*sizeof(int));
        csr_out.size = rows;

        int row,col,value;
        for(int w = 0 ; w < rows + 1; w++)
        {
                fscanf(fd,"%d",&row);
                csr_out.row_ptr[w] = row;
        }
        for(int w= 0 ; w < nnz; w++)
        {       
                fscanf(fd,"%d",&col);   
                csr_out.col_ptr[w] = col;
        }
        for(int w= 0 ; w < nnz; w++)
        {
                float value;
                fscanf(fd,"%f",&value); 
                csr_out.val[w] = (int) value;
        }
        return csr_out ;
}

void pagerank_init(int** arg1, int** arg2, int** arg3)
{
        int i;
       
        int* out_link = (int*) calloc(sizeof(int)*csr_graph.vertices, sizeof(char));
        int* p  = (int*) calloc(sizeof(int)*csr_graph.vertices, sizeof(char));
        int* p_new  = (int*) calloc(sizeof(int)*csr_graph.vertices, sizeof(char));

        perfMon.startMeasurement();

        #ifndef NOATOM
        #ifndef LOOKUPONLY 
        atom_map((void*) out_link, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1, 1);
        #endif
        #endif
        
        
        #ifndef NOATOM
        #ifndef LOOKUPONLY 
        atom_map((void*) p, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1,1);
        #endif
        #endif

        #ifndef NOATOM
        #ifndef LOOKUPONLY 
        atom_map((void*) p_new, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1, 1);
        #endif
        #endif
       

        #ifndef NOATOM
        #ifndef LOOKUPONLY 
        
        uint64_t atom_attribs[16];
        
        atom_attribs[0] = (uint64_t) csr_graph.col_ptr;
        atom_attribs[1] = (uint64_t) p_new;

        atom_define_bulk(0, (uint32_t*) atom_attribs, 4);
        atom_map((void*) csr_graph.col_ptr, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1, 0);                 
        #endif
        #endif
       

        // Fix the stochastization
       for( i=0; i < csr_graph.vertices; i++){
                out_link[i] =0;
        }

        
        int rowel = 0;
        for(i=0; i < csr_graph.vertices; i++){
                if (csr_graph.row_ptr[i+1] != 0) {
                rowel = csr_graph.row_ptr[i+1] - csr_graph.row_ptr[i];
                out_link[i] = rowel;
                }
        }


        int curcol = 0;
        for(i=0; i<csr_graph.vertices; i++){

                rowel = csr_graph.row_ptr[i+1] - csr_graph.row_ptr[i];

                for (int j=0; j<rowel; j++) {
                        csr_graph.val[curcol] = csr_graph.val[curcol] / out_link[i];
                        curcol++;
                }
        }

        for(int i=0; i < csr_graph.vertices; i++){
                p[i] = 1/csr_graph.vertices;
        }
  
        *arg1 = out_link;
        *arg2 = p;
        *arg3 = p_new;
}

void pagerank(int* out_link, int* p, int* p_new){

        int looping = 1;
        int d = 1;
        int k = 0;
        int i = 0;

        while (looping){
        
        // Initialize p_new as a vector of n 0.0 cells
                for(i=0; i < csr_graph.vertices; i++){
                        p_new[i] = 0;
                }
                
                int rowel = 0;
                int curcol = 0;
                
                // Page rank modified algorithm 
                int volatile x=0;
                for(i=0; i<csr_graph.vertices; i++){
                        rowel = csr_graph.row_ptr[i+1] - csr_graph.row_ptr[i];
                        for (int j=0; j<rowel; j++) {
                                if(curcol + stride < csr_graph.edges) x+= p_new[csr_graph.col_ptr[curcol+stride]];
                                p_new[csr_graph.col_ptr[curcol]] = p_new[csr_graph.col_ptr[curcol]] + csr_graph.val[curcol] * p[i];
                                curcol++;
                        }
                }


                for(i=0; i<csr_graph.vertices; i++){
                        p_new[i] = d * p_new[i] + (1 - d) / csr_graph.vertices;
                }

 
       
                // TERMINATION: check if we have to stop
                int error = 0;
                for(i=0; i< csr_graph.vertices; i++) {
                        error =  error + abs(p_new[i] - p[i]);
                }
                //if two consecutive instances of pagerank vector are almost identical, stop
                if (k > 20){
                        looping = 0;
                }
                
                // Update p[]
                for (i=0; i<csr_graph.vertices;i++){
                        p[i] = p_new[i];
                }
                
                // Increase the number of iterations
                k = k + 1;
                printf("X = %d\n",x);
        }
}


int main(int argc, char* argv[]){

        #ifdef NOATOM
        atom_init(GRANULARITY, true);
        #else
        atom_init(GRANULARITY, false);
        #endif

        csr_graph = read_graph(argv[1]);
        stride = atoi(argv[2]);
        #ifndef NOATOM
        #ifndef LOOKUPONLY 
        atom_map((void*) csr_graph.row_ptr, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1, 1);
        atom_map((void*) csr_graph.val, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1, 1);
        #endif
        #endif
        int** out_link = (int**) malloc(sizeof(int*)); 
        int** p = (int**) malloc(sizeof(int*));
        int** p_new = (int**) malloc(sizeof(int*));
        printf("BEGIN TEST\n");
        //perfMon.startMeasurement();
        pagerank_init(out_link, p, p_new);
        printf("Initializatinon Finished\n");
        pagerank(*out_link, *p, *p_new);
        perfMon.endMeasurement();
        printf("END TEST\n");
        perfMon.printStats();
        perfMon.printCSV();

}
