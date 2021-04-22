/* For copyright information, see olden_v1.0/COPYRIGHT */

#include "perimeter.h"
#include <stdio.h>
#include <stdlib.h>

#include "crosslayer.h"
#include "HPC_C.h"
#ifndef GRANULARITY
#define GRANULARITY 6
#endif

static int adj(Direction d, ChildType ct)
{
  switch (d) 
    {
    case north:
      return ((ct==northeast) || (ct==northwest));
    case south:
      return ((ct==southeast) || (ct==southwest));
    case east:
      return ((ct==northeast) || (ct==southeast));
    case west:
      return ((ct==southwest) || (ct==northwest));
    }
}

static ChildType reflect(Direction d, ChildType ct) 
{
  if ((d==west) || (d==east)) 
    {
      switch(ct) 
	{
	case northwest:
	  return northeast;
	case northeast:
	  return northwest;
	case southeast:
	  return southwest;
	case southwest:
	  return southeast;
#ifdef DEBUG
	default:
	  printf("\nbug in reflect() \n");
	  exit(1);
#endif
	}
    }
  switch(ct) 
    {
    case northwest:
      return southwest;
    case northeast:
      return southeast;
    case southeast:
      return northeast;
    case southwest:
      return northwest;
#ifdef DEBUG
    default:
      printf("\n bug2 in reflect() \n");
      exit(1);
#endif
    }
}

int CountTree(SecurePointer<struct quad_struct>*  tree) 
{
  SecurePointer<struct quad_struct>*  nw,*ne,*sw,*se;

  nw = (*tree)->nw; ne = (*tree)->ne; sw = (*tree)->sw; se = (*tree)->se;
  if (nw==NULL && ne==NULL && sw==NULL && se==NULL)
    return 1;
  else
    return CountTree(nw) + CountTree(ne) + CountTree(sw) +
      CountTree(se);
}

static SecurePointer<struct quad_struct>* child(SecurePointer<struct quad_struct>* tree, ChildType ct)
{
  switch(ct) 
    {
    case northeast:
      return (*tree)->ne;
    case northwest:
      return (*tree)->nw;
    case southeast:
      return (*tree)->se;
    case southwest:
      return (*tree)->sw;
    default:
#ifdef DEBUG
      printf("\n bug in child()\n");
      exit(1);
#endif
      return 0;
    }
}

static SecurePointer<struct quad_struct>* gtequal_adj_neighbor(SecurePointer<struct quad_struct>* tree, Direction d)
{
  SecurePointer<struct quad_struct>* q,*parent;
  ChildType ct;
  
  parent=(*tree)->parent;
  ct=(*tree)->childtype;
  if ((parent!=NULL) && adj(d,ct))
    q=gtequal_adj_neighbor(parent,d);
  else q=parent;
  if (q && (*q)->color==grey) {
    return child(q,reflect(d,ct));
  }
  else return q;
}

static int sum_adjacent(SecurePointer<struct quad_struct>* p, ChildType q1, ChildType q2, int size)
{
  if ((*p)->color==grey) 
    {
      return sum_adjacent(child(p,q1),q1,q2,size/2) +
	sum_adjacent(child(p,q2),q1,q2,size/2);
    }
  else if ((*p)->color==white) 
    {
      return size;
    }
  else return 0;
}

int perimeter(SecurePointer<struct quad_struct>* tree, int size)
{
  int retval = 0;
  SecurePointer<struct quad_struct>* neighbor;

  if ((*tree)->color==grey) 
    {
      SecurePointer<struct quad_struct>* child;
#ifdef FUTURES
      future_cell_int fc_sw,fc_se,fc_ne;
#endif

#ifndef FUTURES
      child = (*tree)->sw;
      retval += perimeter(child,size/2);
      child = (*tree)->se;
      retval += perimeter(child,size/2);
      child = (*tree)->ne;
      retval += perimeter(child,size/2);
      child = (*tree)->nw;
      retval += perimeter(child,size/2);
#else
      child = tree->sw;
      FUTURE(child,size/2,perimeter,&fc_sw);
      child = tree->se;
      FUTURE(child,size/2,perimeter,&fc_se);
      child = tree->ne;
      FUTURE(child,size/2,perimeter,&fc_ne);
      child = tree->nw;
      retval = perimeter(child,size/2);
      TOUCH(&fc_sw);
      TOUCH(&fc_se);
      TOUCH(&fc_ne);
      retval += fc_sw.value + fc_se.value + fc_ne.value;
#endif
    }
  else if ((*tree)->color==black)
    {
      /* North */
      neighbor=gtequal_adj_neighbor(tree,north);
      if ((neighbor==NULL) || ((*neighbor)->color==white)) retval+=size;
      else if ((*neighbor)->color==grey) 
	retval+=sum_adjacent(neighbor,southeast,southwest,size);
      /* East */
      neighbor=gtequal_adj_neighbor(tree,east);
      if ((neighbor==NULL) || ((*neighbor)->color==white)) retval+=size;
      else if ((*neighbor)->color==grey) 
	retval+=sum_adjacent(neighbor,southwest,northwest,size);
      /* South */
      neighbor=gtequal_adj_neighbor(tree,south);
      if ((neighbor==NULL) || ((*neighbor)->color==white)) retval+=size;
      else if ((*neighbor)->color==grey) 
	retval+=sum_adjacent(neighbor,northwest,northeast,size);
      /* West */
      neighbor=gtequal_adj_neighbor(tree,west);
      if ((neighbor==NULL) || ((*neighbor)->color==white)) retval+=size;
      else if ((*neighbor)->color==grey) 
	retval+=sum_adjacent(neighbor,northeast,southeast,size);
    }
  return retval;
}

extern int dealwithargs(int argc, char * argv[]);

int main(int argc, char *argv[])
{

  #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  uint32_t atom_props[16] = {0};
  atom_define_bulk(0, atom_props, 16);
  atom_init(GRANULARITY, 0);
  #endif

  SecurePointer<struct quad_struct>* tree;
  int count;
  int level;

#ifndef TORONTO
#ifdef FUTURES
  SPMDInit();
#else
  filestuff();
#endif
#endif

#ifdef DEBUG
  printf("main.nopf.c: sizeof(quad_struct)=%d\n", sizeof(quad_struct));
#endif

  level = dealwithargs(argc,argv);

#ifndef TORONTO
  chatting("Perimeter with %d levels on %d processors\n",level,__NumNodes);
  tree=MakeTree(2048,0,0,0,__NumNodes-1,NULL,southeast,level);
#else
  chatting("Perimeter with %d levels on %d processors\n",level,NumNodes);
  tree=MakeTree(2048*1024,0,0,0,NumNodes-1,NULL,southeast,level);
#endif

#ifdef DEBUG
  printf("After MakeTree(2048...), tree=%p *tree is: color=%d  childtype=%d nw=%p ne=%p sw=%p se=%p parent=%p\n", tree, tree->color, tree->childtype, tree->nw, tree->ne, tree->sw, tree->se, tree->parent);
#endif

  count=CountTree(tree);
  chatting("# of leaves is %d\n",count);

#ifndef TORONTO
  ClearAllStats();

  CMMD_node_timer_clear(0);
  CMMD_node_timer_start(0);
#endif

  hpcInit();
  hpcStartMeasurement();
#ifndef TORONTO
  count=perimeter(tree,4096);
#else
  count=perimeter(tree,4096);
#endif
  hpcEndMeasurement();

#ifndef TORONTO
  CMMD_node_timer_stop(0);
#endif

  chatting("perimeter is %d\n",count);

#ifndef TORONTO
  chatting("Time elapsed = %f seconds\n",CMMD_node_timer_elapsed(0));
#ifdef FUTURES
  __ShutDown();
#endif
#endif

  hpcPrintStats();
  hpcPrintCSV();

}








