#include <cstdlib>
#include <cstdio>
#include <list>
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
using namespace std;
typedef struct csr csr;
csr csr_graph;
int stride;


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
        srand(1543526);
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
                float xd;
                fscanf(fd,"%f",&xd); 
                csr_out.val[w] = (int)xd;
        }
        return csr_out ;
}


void benchmark (int *teenager, int *followers)
{
    for(int i=0; i<100; i++){
        for ( unsigned r=0; r<csr_graph.vertices; r++ )
        {
                teenager[r]=(rand()%2);
                followers[r]=0;
        }

        for ( unsigned long r=0; r<csr_graph.vertices; r++ )
        {

            
            if ( teenager[r] == 1 )
                for ( unsigned long c = csr_graph.row_ptr[r]; c<csr_graph.row_ptr[r+1]; c++ )
                {
                    int neighbor = csr_graph.col_ptr[c];
                    followers[neighbor]++;
                }
        }

        
        unsigned long total_followers = 0;
        for ( unsigned long r=0; r<csr_graph.vertices; r++ )
            total_followers += followers[r];
    }
}



int main(int argc, char* argv[]){

    #ifdef NOATOM
    atom_init(GRANULARITY, true);
    #else
    atom_init(GRANULARITY, false);
    #endif

    csr_graph = read_graph(argv[1]);
    stride  = 1;

    int* teenager;
    int* followers;
    teenager = (int*) calloc(sizeof(int)*csr_graph.vertices, sizeof(char));
    followers = (int*) calloc(sizeof(int)*csr_graph.vertices, sizeof(char));
    srand(1337);

    HPC perfMon;
    perfMon.startMeasurement();

    #ifndef NOATOM
    #ifndef LOOKUPONLY 
    atom_deactivate(0);
    atom_activate(1);
    atom_activate(2);
    atom_activate(3);
    atom_activate(4);

    
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
        atom_attribs3[1] = (uint64_t) followers;
        atom_attribs3[2] = (uint64_t) csr_graph.edges;
        atom_attribs3[3]  = (uint64_t) stride;

        uint64_t atom_attribs4[16];
        atom_attribs4[0] = (uint64_t) teenager;
        atom_attribs4[1] = (uint64_t) 0;
        atom_attribs4[2] = (uint64_t) csr_graph.vertices;
        atom_attribs4[3]  = (uint64_t) stride;


        atom_define_bulk(1, (uint32_t*) atom_attribs, 8);
        atom_define_bulk(2, (uint32_t*) atom_attribs2, 8);
        atom_define_bulk(3, (uint32_t*) atom_attribs3, 8);
        atom_define_bulk(4, (uint32_t*) atom_attribs4, 8);
 
 
        atom_map((void*) teenager, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1, 4); 
        atom_map((void*) csr_graph.row_ptr, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1, 1); 
        atom_map((void*) csr_graph.val, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1, 2);     
        atom_map((void*) csr_graph.col_ptr, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1, 3);   
    #endif
    #endif

    benchmark(teenager,followers);
    perfMon.endMeasurement();
    printf("Teenage Follower Finished\n");
    perfMon.printStats();
    perfMon.printCSV();
}
