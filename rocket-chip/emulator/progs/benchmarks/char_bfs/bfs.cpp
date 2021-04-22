#include <cstdlib>
#include <cstdio>
#include <list>
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

using namespace std;
typedef struct csr csr;
csr csr_graph;
HPC perfMon;
bool *visited;
list<int>::iterator i; 
//list<int> queue;



struct worklistQueue{
    int *value;
    int pointer_start;
    int pointer_end;
};

struct worklistQueue queue;

void init_queue(int size){ 
    queue.value = (int*) malloc (sizeof(int)*size);
    queue.pointer_start = 0;
    queue.pointer_end = 0;
}

void push_back(int element){
    queue.value[queue.pointer_end] = element;
    queue.pointer_end = queue.pointer_end + 1 ;
}

void pop_front(){
    queue.pointer_start = queue.pointer_start +1 ;
}

int front(){
    return queue.value[queue.pointer_start];
}

int queue_size(){

    return (queue.pointer_end - queue.pointer_start);
}

int empty(){
    return ((queue.pointer_end - queue.pointer_start) == 0);
}

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
                csr_out.col_ptr[w] = rand()%rows;
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
    for(int x = 0 ; x < 10 ; x++)
    {
        init_queue(csr_graph.vertices+100);
        for(int i = 0; i < csr_graph.vertices; i++) 
            visited[i] = false; 

        visited[0] = true; 
        push_back(0);
        while(!empty()) 
        { 
            s = front(); 
            pop_front();
            for (int i = csr_graph.row_ptr[s]; i < csr_graph.row_ptr[s+1]; i++) 
            { 
                int neighbor = csr_graph.col_ptr[i];
                if (!visited[neighbor]) 
                { 
                    visited[neighbor] = true; 
                   // queue.push_back(neighbor); 
                    push_back(neighbor); 
                } 
            } 
        } 
        free(queue.value);
    }
}


int main(int argc, char* argv[]){

    #ifdef NOATOM
    atom_init(GRANULARITY, true);
    #else
    atom_init(GRANULARITY, false);
    #endif
    
    csr_graph = read_graph(argv[1]);


    visited = (bool*) malloc(sizeof(bool)*csr_graph.vertices);
    for(int i = 0; i < csr_graph.vertices; i++) 
        visited[i] = false; 
 
    perfMon.startMeasurement();

    #ifndef NOATOM
    #ifndef LOOKUPONLY

    atom_deactivate(0);                                                                          
    atom_activate(1); 

    uint64_t atom_attribs[16];                        
    atom_attribs[0]  = (uint64_t) 6;
    atom_attribs[1]  = (uint64_t) csr_graph.vertices;
    atom_attribs[2]  = (uint64_t) queue.value;
    atom_attribs[3]  = (uint64_t) csr_graph.row_ptr;
    atom_attribs[4]  = (uint64_t) csr_graph.col_ptr;

    atom_define_bulk(1, (uint32_t*) atom_attribs, 8);
    atom_map((void*) queue.value, (sizeof(int)*csr_graph.vertices)/(1<<GRANULARITY)+1, 1);

    #endif
    #endif

    bfs();

    perfMon.endMeasurement();
    printf("BFS Finished\n");
    perfMon.printStats();
    perfMon.printCSV();
}
