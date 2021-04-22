/* For copyright information, see olden_v1.0/COPYRIGHT */

/* em3d.h - Header file for the electromagnetic problem in 3 dimensions
 *
 * By:  Martin C. Carlisle
 * Date: Feb. 23, 1994
 *
 */

#ifndef EM3D
#define EM3D

void dealwithargs(int argc, char *argv[]);
void printstats(void);
//void srand48(long);
//long lrand48(void);

#include <stdio.h>
#include <stdlib.h>
#include "SecurePointer.h"

#define chatting printf

extern char * min_ptr;
extern char * max_ptr;

extern int n_nodes; /* number of nodes (E and H) */
extern int d_nodes; /* degree of nodes */
extern int local_p; /* percentage of local edges */
#define PROCS 1

//#define assert(a) if (!a) {printf("Assertion failure\n"); exit(-1);}

typedef struct node_t {
  long *value;
  SecurePointer<struct node_t> *next;
  SecurePointer<struct node_t> **to_nodes; /* array of nodes pointed to */
  long **from_values; /* array of ptrs to vals where data comes from */
  long *coeffs; /* array of coeffs on edges */
  int from_count;
  int from_length;
} node_t;
template class SecurePointer<node_t>;
typedef struct graph_t {
  SecurePointer<node_t> *e_nodes[PROCS];
  SecurePointer<node_t> *h_nodes[PROCS];
} graph_t;
template class SecurePointer<graph_t>;

typedef struct table_t {
  SecurePointer<node_t> **e_table[PROCS];
  SecurePointer<node_t> **h_table[PROCS];
} table_t;
template class SecurePointer<table_t>;


/* Perform 1 step for a nodelist */
void compute_nodes(SecurePointer<node_t> *nodelist);
long gen_uniform_long(void);

#endif
