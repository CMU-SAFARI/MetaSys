/* For copyright information, see olden_v1.0/COPYRIGHT */

#include "em3d.h"
#include "make_graph.h"

#include "crosslayer.h"
#include "HPC_C.h"
#ifndef GRANULARITY
#define GRANULARITY 6
#endif

extern int NumNodes;

int DebugFlag;

void print_graph(SecurePointer<graph_t> *graph, int id) 
{
  SecurePointer<node_t> *cur_node;
  cur_node=(*graph)->e_nodes[id];

  for(; cur_node; cur_node=(*cur_node)->next)
    {
      chatting("E: value %ld, from_count %d\n", *(*cur_node)->value,
	       (*cur_node)->from_count);
    }
  cur_node=(*graph)->h_nodes[id];
  for(; cur_node; cur_node=(*cur_node)->next)
    {
      chatting("H: value %ld, from_count %d\n", *(*cur_node)->value,
	       (*cur_node)->from_count);
    }
}

extern int nonlocals;

int main(int argc, char *argv[])
{
  int i;
  SecurePointer<graph_t> *graph = new SecurePointer<graph_t>(sizeof(graph_t));

  #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  uint32_t atom_props[16] = {0};
  atom_define_bulk(0, atom_props, 16);
  atom_init(GRANULARITY, 0);
  #endif
  

  dealwithargs(argc,argv);

  chatting("Hello world--Doing em3d with args %d %d %d %d\n",
           n_nodes,d_nodes,local_p,NumNodes);
  graph=initialize_graph();
  if (DebugFlag) 
    for(i=0; i<NumNodes;i++)
      print_graph(graph,i);


  hpcInit();
  hpcStartMeasurement();

  compute_nodes((*graph)->e_nodes[0]);
  compute_nodes((*graph)->h_nodes[0]);

  hpcEndMeasurement();

  chatting("nonlocals = %d\n",nonlocals);

  printstats();
  hpcPrintStats();
  hpcPrintCSV();
  return 0;
}
