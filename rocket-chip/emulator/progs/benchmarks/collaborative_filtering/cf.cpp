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
int K;
double *latent_curr;
double *error;


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

void cf_init()
{

        int i;
        K=20;
        latent_curr =  (double*) malloc(csr_graph.vertices*K*sizeof(double));
        error = (double*) malloc(csr_graph.vertices*K*sizeof(double));

        for(int i = 0; i < csr_graph.vertices; i++){
                for (int j = 0; j < K; j++){
                        latent_curr[i*K+j] = 0.5; //default initial value of 0.5
                        error[i*K+j] = 0.0;
                }
        }

        perfMon.startMeasurement();

        #ifndef NOATOM
        #ifndef LOOKUPONLY 
        
        atom_deactivate(0);
        atom_activate(1);
        atom_activate(2);
        atom_activate(3);
        
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
        atom_attribs3[1] = (uint64_t) 0;
        atom_attribs3[2] = (uint64_t) csr_graph.edges;
        atom_attribs3[3]  = (uint64_t) stride;

        atom_define_bulk(1, (uint32_t*) atom_attribs, 8);
        atom_define_bulk(2, (uint32_t*) atom_attribs2, 8);
        atom_define_bulk(3, (uint32_t*) atom_attribs3, 8);

        atom_map((void*) csr_graph.row_ptr, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1, 1); 
        atom_map((void*) csr_graph.val, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1, 2);     
        atom_map((void*) csr_graph.col_ptr, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1, 3);

        #endif
        #endif
        
        printf("ENDED ATOM RELATED STUFF\n");       


}

void collaborative_filtering(){

        int looping = 10;
        double step = 0.00000035; //step size
        double lambda = 0.001;
        int i;
        while(looping){
                int curcol = 0;
                for(i=0; i<csr_graph.vertices; i++){
                        int rowel = csr_graph.row_ptr[i+1] - csr_graph.row_ptr[i];
                        for (int j=0; j<rowel; j++) {

                                int neighbor = csr_graph.col_ptr[curcol];
                                
                                double estimate = 0;
                                long current_offset = K*neighbor, ngh_offset = K*i;
                                double *cur_latent =  &latent_curr[current_offset], *ngh_latent = &latent_curr[ngh_offset];
                                for(int i = 0; i < K; i++){
                                        estimate +=  cur_latent[i]*ngh_latent[i];
                                }
                                double err = rowel - estimate;
                                double* cur_error = &error[current_offset];

                                for (int i = 0; i < K; i++){
                                        cur_error[i] += ngh_latent[i]*err;
                                }
                                curcol++;
                        }
                }

                for(i =0; i<csr_graph.vertices; i++){
                        for (int j = 0; j < K; j++){
                                latent_curr[K*i + j] += step*(-lambda*latent_curr[K*i + j] + error[K*i + j]);
                                error[K*i+j] = 0.0;
                        }
                
                }
                looping = looping - 1;
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

        printf("BEGIN TEST\n");
        //perfMon.startMeasurement();
        cf_init();
        collaborative_filtering();
        perfMon.endMeasurement();
        printf("END TEST\n");
        perfMon.printStats();
        perfMon.printCSV();

}
