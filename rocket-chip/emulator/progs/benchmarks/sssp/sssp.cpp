#include <cstdlib>
#include <cstdio>
#include "crosslayer.h"
#include "HPC.h"

#ifndef GRANULARITY
#define GRANULARITY 9
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
int* distance;
csr csr_graph;
HPC perfMon;
int stride;

struct csr read_graph(char *path)
{
        printf("Read graph %s\n",path);
        FILE *fd;
        fd = fopen(path,"r");

        int rows, columns, nnz;
        srand(1543526);
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
                csr_out.col_ptr[w] = rand()%rows;
        }
        for(int w= 0 ; w < nnz; w++)
        {
                float value;
                fscanf(fd,"%f",&value); 
                csr_out.val[w] = (int)value;
        }
        distance = (int*) malloc(sizeof(int)*csr_out.vertices);
        for ( unsigned r=0; r<csr_out.vertices; r++ )
        {
                distance[r]=-1;
        }
        return csr_out ;
}


void sssp(){

        unsigned long checksum = 0;

      
    for(int i=0; i<100; i++){
        for ( unsigned r=0; r<csr_graph.vertices; r++ )
        {
                //distance[r]=(-1)*r;
                distance[r] = (-1)*(r);
        }
        distance[0] = 0;

        for ( unsigned r=0; r < csr_graph.vertices; r++ ){
            for ( unsigned long c = csr_graph.row_ptr[r]; c<csr_graph.row_ptr[r+1]; c++ ) // for node.successors
            {
                int neighbor = csr_graph.col_ptr[c];
                int w = csr_graph.val[c];
                if ( distance[r] != -1 && distance[neighbor] > distance[r] + w ){
                    distance[neighbor] = distance[r] + w;
                }
                checksum += w;
            }
        }
        
        }

 
};


int main(int argc, char* argv[]){

    #ifdef NOATOM
    atom_init(GRANULARITY, true);
    #else
    atom_init(GRANULARITY, false);
    #endif
    

        csr_graph = read_graph(argv[1]);
        stride = atoi(argv[2]);
        printf("ROI START \n");
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
               
        atom_attribs2[0]  = (uint64_t) csr_graph.col_ptr;
        atom_attribs2[1]  = (uint64_t) distance;
        atom_attribs2[2]  = (uint64_t) csr_graph.edges;
        atom_attribs2[3]  = (uint64_t) stride;

        uint64_t atom_attribs3[16];                        
        
        atom_attribs3[0]  = (uint64_t) csr_graph.val;
        atom_attribs3[1] = (uint64_t) 0;
        atom_attribs3[2]  = (uint64_t) csr_graph.edges;
        atom_attribs3[3]  = (uint64_t) stride;

        atom_define_bulk(1, (uint32_t*) atom_attribs, 8);
        atom_define_bulk(2, (uint32_t*) atom_attribs2, 8);
        atom_define_bulk(3, (uint32_t*) atom_attribs3, 8);
 
        atom_map((void*) csr_graph.row_ptr, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1, 1);
        atom_map((void*) csr_graph.col_ptr, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1, 2);
        atom_map((void*) csr_graph.val, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1, 3);

      #endif
      #endif
       sssp();
        perfMon.endMeasurement();
        printf("ROI END\n");
       perfMon.printStats();
       perfMon.printCSV();
       return 0;


}
