/* For copyright information, see olden_v1.0/COPYRIGHT */

/* build.c
 *
 * By:  Martin C. Carlisle
 *      Princeton University
 *      6/24/94
 * 
 * builds a two-dimensional tree for TSP
 * 
 * distribution of median is given by modification of exponential to
 * be [-1,1]
 */ 

#include <stdio.h>
#include <stdlib.h>

#ifdef TORONTO
#include <math.h>
#ifdef __MINGW32__
#define srand48(x) srand(x)
#endif
#else
extern void srand48(long seedval);
#endif

#define  M_E      2
#define  M_E2     7
#define  M_E3     20
#define M_E6 403
#define M_E12 162754

#include "tsp.h"
#ifdef FUTURES
#include "future-cell.h"
#endif


static long median(long min,long max,int n);
static long uniform(long min, long max);

static long log(long a){
  return a/5;
}

/* Return an estimate of median of n values distributed in [min,max) */
static long median(long min,long max,int n) {
  long t;
  long retval;
  
  t = rand()%32768; /* in [0.0,1.0) */
  if (t > 16384) {
    retval=log(1-(2*(M_E12-1)*(t)/M_E12))/12;   
    }
  else {
    retval=-log(1-(2*(M_E12-1)*t/M_E12))/12;
    }
  /* We now have something distributed on (-1.0,1.0) */
  retval = (retval+1) * (max-min)/2;
  retval = retval + min;
  return retval;
}

/* Get double uniformly distributed over [min,max) */
static long uniform(long min, long max) {
  long retval;
  
  retval = rand()/8192; /* in [0,4) */
  retval = retval * (max-min);
  return retval + min;
}

/* Builds a 2D tree of n nodes in specified range with dir as primary 
   axis (0 for x, 1 for y) */
SecurePointer<Tree>* build_tree(int n,int dir,int lo,int num_proc,long min_x,
                long max_x,long min_y,long max_y) {
  long med;
  SecurePointer<Tree>* t;
#ifdef FUTURES
  future_cell_int fc;
#endif

  if (n==0) return NULL;

  t = new SecurePointer<Tree>(sizeof(Tree));

  if (dir) {
    dir = !dir;
    med = median(min_x,max_x,n);
#ifndef FUTURES
    (*t)->left=build_tree(n/2,dir,lo+num_proc/2,num_proc/2,min_x,med,min_y,max_y);
    (*t)->right=build_tree(n/2,dir,lo,num_proc/2,med,max_x,min_y,max_y);
#else
    FUTURE(n/2,dir,lo+num_proc/2,num_proc/2,min_x,med,min_y,max_y,
           build_tree,&fc);
    t->right=build_tree(n/2,dir,lo,num_proc/2,med,max_x,min_y,max_y);
#endif
    (*t)->x = med;
    (*t)->y = uniform(min_y,max_y);
    }
  else {
    dir = !dir;
    med = median(min_y,max_y,n);
#ifndef FUTURES
    (*t)->left=build_tree(n/2,dir,lo+num_proc/2,num_proc/2,min_x,max_x,min_y,med);
    (*t)->right=build_tree(n/2,dir,lo,num_proc/2,min_x,max_x,med,max_y);
#else
    FUTURE(n/2,dir,lo+num_proc/2,num_proc/2,min_x,max_x,min_y,med,
           build_tree,&fc);
    t->right=build_tree(n/2,dir,lo,num_proc/2,min_x,max_x,med,max_y);
#endif
    (*t)->y = med;
    (*t)->x = uniform(min_x,max_x);
    }
  (*t)->sz = n;
  (*t)->next = NULL;
  (*t)->prev = NULL;
#ifdef FUTURES
  TOUCH(&fc);
  t->left = (Tree) fc.value;
#endif
  return t;
}




