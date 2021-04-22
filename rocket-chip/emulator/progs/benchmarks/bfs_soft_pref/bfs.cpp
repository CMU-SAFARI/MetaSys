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
HPC perfMon;
bool *visited;
list<int>::iterator i; 
list<int> queue;
 
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
                fscanf(fd,"%d",&value); 
                csr_out.val[w] = value;
        }
        return csr_out ;
}


void bfs(){

    int s;
    int x;
    for(int x = 0 ; x < 10 ; x++)
    {
        for(int i = 0; i < csr_graph.vertices; i++) 
            visited[i] = false; 
        // Mark the current node as visited and enqueue it 
        visited[0] = true; 
        queue.push_back(0); 
        while(!queue.empty()) 
        { 
            // Dequeue a vertex from queue and print it 
            s = queue.front(); 
            queue.pop_front(); 
    
            // Get all adjacent vertices of the dequeued 
            // vertex s. If a adjacent has not been visited,  
            // then mark it visited and enqueue it 
            for (int i = csr_graph.row_ptr[s]; i < csr_graph.row_ptr[s+1]; i++) 
            { 
                
                x+= visited[csr_graph.col_ptr[csr_graph.row_ptr[queue.front()]+i]];
                int neighbor = csr_graph.col_ptr[i];
                if (!visited[neighbor]) 
                { 
                    visited[neighbor] = true; 
                    queue.push_back(neighbor); 
                } 
            } 
        } 
    }
        
    printf("X = %d \n", x);

}


int main(int argc, char* argv[]){
    #ifdef NOATOM
    atom_init(GRANULARITY, true);
    #else
    atom_init(GRANULARITY, false);
    #endif
    
    csr_graph = read_graph(argv[1]);

         // Mark all the vertices as not visited 
    visited = (bool*) malloc(sizeof(bool)*csr_graph.vertices);
    for(int i = 0; i < csr_graph.vertices; i++) 
        visited[i] = false; 
 
    perfMon.startMeasurement();
  
    // 'i' will be used to get all adjacent 
    // vertices of a vertex 
    #ifndef NOATOM
    #ifndef LOOKUPONLY
    atom_map((void*) visited, (sizeof(bool)*csr_graph.vertices)/(1<<GRANULARITY)+1, 0);
    atom_map((void*) csr_graph.row_ptr, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1, 0);
    atom_map((void*) csr_graph.col_ptr, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1, 0);
    atom_map((void*) csr_graph.val, (sizeof(int)*csr_graph.edges)/(1<<GRANULARITY)+1, 0);
    #endif
    #endif
    bfs();
    perfMon.endMeasurement();
    printf("BFS Finished\n");
    perfMon.printStats();
    perfMon.printCSV();
}
