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

typedef struct csr csr;
using namespace std;

HPC perfMon;
csr csr_graph;
int stride;
list<int>::iterator i; 
//list<int> queue;
list<int> nextqueue;
int* radii;
long* visited;
long* nextvisited;

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

inline int hashInt(int a) {
   a = (a^0xb55a4f09) ^ (a>>16);
   return a;
}

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

void radii_init()
{


        radii =  (int*) malloc(sizeof(int)*csr_graph.vertices);
        visited = (long*) malloc(sizeof(long)*csr_graph.vertices);
        nextvisited =  (long*) malloc(sizeof(long)*csr_graph.vertices);
        

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

void rad(){
        int s;
        int c=0;
        int round =0;
        int w=-1;
        for(int times=0; times<1; times++){
                init_queue(csr_graph.vertices);
                for(long i=0; i < csr_graph.vertices; i++) {
                        radii[i] = -1;
                        visited[i] = nextvisited[i] = 0;
                }
                int sampleSize = 64;        
                for(long i=0;i<sampleSize;i++) { //initial set of vertices
                        int v = hashInt(i) % csr_graph.vertices;
                        radii[v] = 0;
                        push_back(v); 
                        nextvisited[v] = (long) 1<<i;
                }         
                
                while(!empty()) 
                { 
                        if(w==0){ round++; c = 0;}
                        if(c==0){                        
                                w = queue_size(); c++;
                                for(int i = 0; i < csr_graph.vertices; i++) visited[i] = nextvisited[i];
                        }

                        s = front(); 
                        pop_front(); 
                        for (int i = csr_graph.row_ptr[s]; i < csr_graph.row_ptr[s+1]; i++){ 
                                int neighbor = csr_graph.col_ptr[i];
                                long toWrite = visited[neighbor] | visited[s];
                                if (visited[neighbor]!= toWrite) 
                                { 
                                        nextvisited[neighbor] |= toWrite;
                                        if(radii[neighbor] != round){
                                                radii[neighbor] = round;
                                                push_back(neighbor);
                                                w--;
                                        }
                                } 
                        } 
                } 
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
        radii_init();
        rad();
        perfMon.endMeasurement();
        printf("END TEST\n");
        perfMon.printStats();
        perfMon.printCSV();

}
