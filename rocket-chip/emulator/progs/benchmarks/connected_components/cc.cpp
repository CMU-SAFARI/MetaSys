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

HPC perfMon;
csr csr_graph;
bool *visited;

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



void connected_components_init()
{
        int i;

        visited = (bool*) malloc (sizeof(bool)*csr_graph.vertices);
        perfMon.startMeasurement();

        #ifndef NOATOM
        #ifndef LOOKUPONLY 
 
        atom_deactivate(0);
        atom_activate(1);
        atom_activate(2);
        atom_activate(3);       
        uint64_t atom_attribs[16];
        
        atom_attribs[0] = (uint64_t) csr_graph.col_ptr;
        atom_attribs[1] = (uint64_t) visited;
        atom_attribs[2] = (uint64_t) csr_graph.edges;

 
        uint64_t atom_attribs2[16];                        
               
        atom_attribs2[0]  = (uint64_t) csr_graph.row_ptr;
        atom_attribs2[2]  = (uint64_t) csr_graph.vertices;


        uint64_t atom_attribs3[16];                        
        
        atom_attribs3[0]  = (uint64_t) csr_graph.val;
        atom_attribs3[2]  = (uint64_t) csr_graph.edges;

        atom_define_bulk(1, (uint32_t*) atom_attribs, 4);
        atom_define_bulk(2, (uint32_t*) atom_attribs2, 4);
        atom_define_bulk(3, (uint32_t*) atom_attribs3, 4);
 
 
        atom_map((void*) csr_graph.col_ptr, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1,1);             
        atom_map((void*) csr_graph.row_ptr, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1,2);
        atom_map((void*) csr_graph.val, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1,3);
 
        #endif
        #endif
       
       for( i=0; i < csr_graph.vertices; i++){
                visited[i] = false;
        }        
}



void DFS(int v){
  int neighbor;
  visited[v] = true;
  
  for (int j=csr_graph.row_ptr[v]; j<csr_graph.row_ptr[v+1]; j++) {
          neighbor = csr_graph.col_ptr[j]; 
          if(!visited[neighbor])
              DFS(neighbor);      
          }
        
};



void connected_components(){
    int i;
    for(i=0; i<csr_graph.vertices; i++){
        if(visited[i] == false){
            DFS(i);
        }
    }
        
}


int main(int argc, char* argv[]){

        #ifdef NOATOM
        atom_init(GRANULARITY, true);
        #else
        atom_init(GRANULARITY, false);
        #endif

        csr_graph = read_graph(argv[1]);
        
        printf("BEGIN TEST\n");
        //perfMon.startMeasurement();
        connected_components_init();
        connected_components();
        perfMon.endMeasurement();
        printf("END TEST\n");
        perfMon.printStats();
        perfMon.printCSV();

}
