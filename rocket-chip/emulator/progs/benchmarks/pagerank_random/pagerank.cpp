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

HPC perfMon;
csr csr_graph;
int stride;
void read_graph(char *path)
{
        printf("Read graph %s\n",path);
        FILE *fd;
        fd = fopen(path,"r");

        int rows, columns, nnz;
        srand(1543526);
        fscanf(fd,"%d",&rows);
        fscanf(fd,"%d",&nnz);
        printf("Rows = %d Non-zero = %d \n",rows,nnz);
        csr_graph.vertices = rows;
        csr_graph.edges = nnz; 
        int total_nnz = 0 ;
        csr_graph.row_ptr = (int *) malloc((rows+1)*sizeof(int));
        csr_graph.col_ptr = (int *) malloc(nnz*sizeof(int));
        csr_graph.val = (int*) malloc(nnz*sizeof(int));
        csr_graph.size = rows;

        int row,col,value;
        for(int w = 0 ; w < rows + 1; w++)
        {
                fscanf(fd,"%d",&row);
                csr_graph.row_ptr[w] = row;
        }
        for(int w= 0 ; w < nnz; w++)
        {       
                fscanf(fd,"%d",&col);   
             //   csr_graph.col_ptr[w] = col;
                csr_graph.col_ptr[w]=rand()%rows;
        }
        for(int w= 0 ; w < nnz; w++)
        {
                float value;
                fscanf(fd,"%f",&value); 
                csr_graph.val[w] = (int) value;
        }
}

void pagerank_init(int** arg1, int** arg2, int** arg3)
{
        int i;
       
        int* out_link = (int*) calloc(sizeof(int)*(csr_graph.vertices+100), sizeof(char));
        int* p  = (int*) calloc(sizeof(int)*(csr_graph.vertices+100), sizeof(char));
        int* p_new  = (int*) calloc(sizeof(int)*(csr_graph.vertices+100), sizeof(char));

        perfMon.startMeasurement();

        #ifndef NOATOM
        #ifndef LOOKUPONLY 
        
        atom_deactivate(0);
        atom_activate(1);
        atom_activate(2);
        atom_activate(3);
        atom_activate(4);
        atom_activate(5);

        
        uint64_t atom_attribs[16];                        
        
        atom_attribs[0]  = (uint64_t) csr_graph.row_ptr;
        atom_attribs[1]  = (uint64_t) 0;
        atom_attribs[2]  = (uint64_t) csr_graph.vertices;
        atom_attribs[3]  = (uint64_t) stride;

        uint64_t atom_attribs2[16];                        
        
        atom_attribs2[0]  = (uint64_t) csr_graph.val;
        atom_attribs2[1]  = (uint64_t) 0;
        atom_attribs2[2]  = (uint64_t) csr_graph.edges;
        atom_attribs2[3]  = (uint64_t) stride;

        uint64_t atom_attribs3[16];
        
        atom_attribs3[0] = (uint64_t) csr_graph.col_ptr;
        atom_attribs3[1] = (uint64_t) p_new;
        atom_attribs3[2] = (uint64_t) csr_graph.edges;
        atom_attribs3[3]  = (uint64_t) stride;

        uint64_t atom_attribs4[16];
        atom_attribs4[0] = (uint64_t) p;
        atom_attribs4[1] = (uint64_t) 0;
        atom_attribs4[2] = (uint64_t) csr_graph.vertices;
        atom_attribs4[3]  = (uint64_t) stride;

        uint64_t atom_attribs5[16];
        atom_attribs5[0] = (uint64_t) out_link;
        atom_attribs5[1] = (uint64_t) 0;
        atom_attribs5[2] = (uint64_t) csr_graph.vertices;
        atom_attribs5[3]  = (uint64_t) stride;
     
        atom_define_bulk(1, (uint32_t*) atom_attribs, 8);
        atom_define_bulk(2, (uint32_t*) atom_attribs2, 8);
        atom_define_bulk(3, (uint32_t*) atom_attribs3, 8);
        atom_define_bulk(4, (uint32_t*) atom_attribs4, 8);
        atom_define_bulk(5, (uint32_t*) atom_attribs5, 8);
 
 
        atom_map((void*) out_link, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1, 4); 
        atom_map((void*) p, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1, 5); 
        atom_map((void*) csr_graph.row_ptr, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1, 1); 
        atom_map((void*) csr_graph.val, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1, 2);     
        atom_map((void*) csr_graph.col_ptr, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1, 3);                 
        #endif
        #endif
        
        printf("ENDED ATOM RELATED STUFF\n");       

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
        int volatile x = 0;
        while (looping){
        
        // Initialize p_new as a vector of n 0.0 cells
                for(i=0; i < csr_graph.vertices; i++){
                        p_new[i] = 0;
                }
                
                int rowel = 0;
                int curcol = 0;
                int x = 0;
                // Page rank modified algorithm 
                for(i=0; i<csr_graph.vertices; i++){
                        rowel = csr_graph.row_ptr[i+1] - csr_graph.row_ptr[i];
                        for (int j=0; j<rowel; j++) {
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


        }
}


int main(int argc, char* argv[]){

        printf("PROG START\n");       
        #ifdef NOATOM
        atom_init(GRANULARITY, true);
        #else
        atom_init(GRANULARITY, false);
        #endif
        printf("INIT ATOM TABLE\n");
        
        read_graph(argv[1]);
        stride = atoi(argv[2]);
        int** out_link = (int**) malloc(sizeof(int*)); 
        int** p = (int**) malloc(sizeof(int*));
        int** p_new = (int**) malloc(sizeof(int*));
        printf("BEGIN TEST\n");
        //perfMon.startMeasurement();
        pagerank_init(out_link, p, p_new);
        pagerank(*out_link, *p, *p_new);
        perfMon.endMeasurement();
        printf("END TEST\n");
        perfMon.printStats();
        perfMon.printCSV();

}
