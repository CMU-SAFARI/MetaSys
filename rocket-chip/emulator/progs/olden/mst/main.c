/* For copyright information, see olden_v1.0/COPYRIGHT */

#include "mst.h"

#include "crosslayer.h"
#include "HPC_C.h"
#ifndef GRANULARITY
#define GRANULARITY 6
#endif

typedef struct blue_return {
  Vertex vert;
  int dist;
} BlueReturn;


typedef struct fc_br {
  BlueReturn value;
} future_cell_BlueReturn;


static BlueReturn BlueRule(Vertex inserted, Vertex vlistArg) 
{
  BlueReturn retval;
  SecurePointer<struct vert_st> tmp,prev;
  SecurePointer<struct vert_st> vlist (vlistArg, sizeof(struct vert_st));
  SecurePointer<struct hash> hash;
  int dist,dist2;
  int count;

  if (vlist==NULL) {
    retval.dist = 999999;
    return retval;
  }

  prev = SecurePointer<struct vert_st> (vlist);
  retval.vert = &(*vlist);
  retval.dist = vlist->mindist;
  hash = SecurePointer<struct hash>(vlist->edgehash,sizeof(struct hash));
  dist = (int) HashLookup((unsigned int) inserted, &(*hash));
  /*printf("Found %d at 0x%x for 0x%x\n",dist,inserted,vlist);*/
  if (dist) 
    {
      if (dist<retval.dist) 
        {
          vlist->mindist = dist;
          retval.dist = dist;
        }
    }
  else printf("Not found\n");
  
  count = 0;
  /* We are guaranteed that inserted is not first in list */
  for ( tmp=SecurePointer<struct vert_st>(vlist->next,sizeof(struct vert_st)); !(tmp==NULL); 
        prev=SecurePointer<struct vert_st>(tmp),
        tmp=SecurePointer<struct vert_st>(tmp->next,sizeof(struct vert_st))) 
    {
      count++;
      if (tmp==(int*)inserted) 
        {
          prev->next = tmp->next;
        }
      else 
        {
          hash = SecurePointer<struct hash>(tmp->edgehash, sizeof(struct hash)); /* <------  6% miss in tmp->edgehash */ 
          dist2 = tmp->mindist;
          dist = (int) HashLookup((unsigned int) inserted, &(*hash));
          /*printf("Found %d at 0x%x for 0x%x\n",dist,inserted,tmp);*/
          if (dist) 
            {
              if (dist<dist2) 
                {
                  tmp->mindist = dist;
                  dist2 = dist;
                }
            }
          else printf("Not found\n");
          if (dist2<retval.dist) 
            {
              retval.vert = &(*tmp);
              retval.dist = dist2;
            }
        } /* else */
    } /* for */
  /*printf("Count was %d\n",count);*/
  return retval;
}

          

static Vertex MyVertexList = NULL;

static BlueReturn Do_all_BlueRule(Vertex inserted, int nproc, int pn) {
  future_cell_BlueReturn fcleft;
  BlueReturn retright;

  if (nproc > 1) {
     fcleft.value = Do_all_BlueRule(inserted,nproc/2,pn+nproc/2);
     retright = Do_all_BlueRule(inserted,nproc/2,pn);

     if (fcleft.value.dist < retright.dist) {
       retright.dist = fcleft.value.dist;
       retright.vert = fcleft.value.vert;
       }
     return retright;
  }
  else {
     if (inserted == MyVertexList)
       MyVertexList = MyVertexList->next;
     return BlueRule(inserted,MyVertexList);
  }
}

static int ComputeMst(Graph graphArg,int numproc,int numvert) 
{
  SecurePointer<struct vert_st> inserted,tmp;
  int cost=0,dist;

  /* make copy of graph */
  //printf("Compute phase 1\n");
  SecurePointer<struct graph_st> graph(graphArg, sizeof(struct graph_st)); 
  /* Insert first node */
  inserted = SecurePointer<struct vert_st>(graph->vlist[0], sizeof(struct vert_st));
  tmp = SecurePointer<struct vert_st>(inserted->next, sizeof(struct vert_st));
  graph->vlist[0] = &(*tmp);
  MyVertexList = &(*tmp);
  numvert--;
  /* Announce insertion and find next one */
  //printf("Compute phase 2\n");
  while (numvert) 
    {
      BlueReturn br;
      
      br = Do_all_BlueRule(&(*inserted),numproc,0);\

      inserted = SecurePointer<struct vert_st>(br.vert, sizeof(struct vert_st));    
      dist = br.dist;
      numvert--;
      cost = cost+dist;
    }
  return cost;
}

int main(int argc, char *argv[]) 
{
  #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  uint32_t atom_props[16] = {0};
  atom_define_bulk(0, atom_props, 16);
  atom_init(GRANULARITY, 0);
  #endif
  
  Graph graph;
  int dist;
  int size;
  size = dealwithargs(argc,argv);
  printf("Making graph of size %d\n",size);

  graph = MakeGraph(size,NumNodes);
  printf("Graph completed\n");

  printf("About to compute mst \n");

  hpcInit();
  hpcStartMeasurement();
  dist = ComputeMst(graph,NumNodes,size);
  hpcEndMeasurement();
  printf("MST has cost %d\n",dist);
  hpcPrintStats();
  hpcPrintCSV();
  exit(0);
}
