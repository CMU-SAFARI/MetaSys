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

int CountTree(QuadTree tree) 
{
  QuadTree nw,ne,sw,se;

atom_select(0);
  nw = tree->nw;
atom_select(0);
  ne = tree->ne; 
atom_select(0);
  sw = tree->sw; 
atom_select(0);
  se = tree->se;
  if (nw==NULL && ne==NULL && sw==NULL && se==NULL)
    return 1;
  else
    return CountTree(nw) + CountTree(ne) + CountTree(sw) +
      CountTree(se);
}

static QuadTree child(QuadTree tree, ChildType ct)
{
  switch(ct) 
    {
    case northeast:
atom_select(0);
      return tree->ne;
    case northwest:
atom_select(0);
      return tree->nw;
    case southeast:
atom_select(0);
      return tree->se;
    case southwest:
atom_select(0);
      return tree->sw;
    default:
#ifdef DEBUG
      printf("\n bug in child()\n");
      exit(1);
#endif
      return 0;
    }
}

static QuadTree gtequal_adj_neighbor(QuadTree tree, Direction d)
{
  QuadTree q,parent;
  ChildType ct;
  
atom_select(0);
  parent=tree->parent;
atom_select(0);
  ct=tree->childtype;
  if ((parent!=NULL) && adj(d,ct))
    q=gtequal_adj_neighbor(parent,d);
  else q=parent;
atom_select(0);
  if (q && q->color==grey) {
    return child(q,reflect(d,ct));
  }
  else return q;
}

static int sum_adjacent(QuadTree p, ChildType q1, ChildType q2, int size)
{
atom_select(0);
  if (p->color==grey) 
    {
      return sum_adjacent(child(p,q1),q1,q2,size/2) +
	sum_adjacent(child(p,q2),q1,q2,size/2);
    }
  else if (p->color==white) 
    {
      return size;
    }
  else return 0;
}

int perimeter(QuadTree tree, int size)
{
  int retval = 0;
  QuadTree neighbor;

atom_select(0);
  if (tree->color==grey) 
    {
      QuadTree child;
#ifdef FUTURES
      future_cell_int fc_sw,fc_se,fc_ne;
#endif

#ifndef FUTURES
atom_select(0);
      child = tree->sw;
      retval += perimeter(child,size/2);
atom_select(0);
      child = tree->se;
      retval += perimeter(child,size/2);
atom_select(0);
      child = tree->ne;
      retval += perimeter(child,size/2);
atom_select(0);
      child = tree->nw;
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
  else if (tree->color==black)
    {
      /* North */
      neighbor=gtequal_adj_neighbor(tree,north);
atom_select(0);
      if ((neighbor==NULL) || (neighbor->color==white)) retval+=size;
      else if (neighbor->color==grey) 
	retval+=sum_adjacent(neighbor,southeast,southwest,size);
      /* East */
      neighbor=gtequal_adj_neighbor(tree,east);
atom_select(0);
      if ((neighbor==NULL) || (neighbor->color==white)) retval+=size;
      else if (neighbor->color==grey) 
	retval+=sum_adjacent(neighbor,southwest,northwest,size);
      /* South */
      neighbor=gtequal_adj_neighbor(tree,south);
atom_select(0);
      if ((neighbor==NULL) || (neighbor->color==white)) retval+=size;
      else if (neighbor->color==grey) 
	retval+=sum_adjacent(neighbor,northwest,northeast,size);
      /* West */
      neighbor=gtequal_adj_neighbor(tree,west);
atom_select(0);
      if ((neighbor==NULL) || (neighbor->color==white)) retval+=size;
      else if (neighbor->color==grey) 
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
  int atom_props[16] = {0};
  atom_define_bulk(0, atom_props, 16);
  atom_init(GRANULARITY, 0);
  #endif

  QuadTree tree;
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








