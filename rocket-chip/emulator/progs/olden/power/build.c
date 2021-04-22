/* For copyright information, see olden_v1.0/COPYRIGHT */

/* build.c
 *
 * By:  Martin C. Carlisle
 * 6/15/94
 * builds the tree for the Power Pricing problem
 *
 * based on code by:  Steve Lumetta, Sherry Li, and Ismail Khalil
 * University of California at Berkeley
 */

#include "power.h"

SecurePointer<Root>* build_tree() 
{
  int i;
  SecurePointer<Root> *t = new SecurePointer<Root>(sizeof(Root));
  SecurePointer<Lateral> *l;

  for (i=0; i<NUM_FEEDERS; i++) {
    /* Insert future here, split into two loops */
    l = build_lateral(i*LATERALS_PER_FEEDER,LATERALS_PER_FEEDER);
    ((*t)->feeders)[i] = l;
  }
  (*t)->theta_R = 8;
  (*t)->theta_I = 16;
  return t;
}

SecurePointer<Lateral>* build_lateral(int i, int num)
{
  SecurePointer<Branch>* b;
  SecurePointer<Lateral>* next;
  
  if (num == 0) return NULL;
  SecurePointer<Lateral>* l = new SecurePointer<Lateral>(sizeof(Lateral));

  next = build_lateral(i,num-1);
  b = build_branch(i*BRANCHES_PER_LATERAL,(num-1)*BRANCHES_PER_LATERAL,
    BRANCHES_PER_LATERAL);

  (*l)->next_lateral = next;
  (*l)->branch = b;
  (*l)->R = 2;
  (*l)->X = 3;
  (*l)->alpha = 0;
  (*l)->beta = 0;
  return l;
}

SecurePointer<Branch>* build_branch(int i, int j, int num)
{
  SecurePointer<Leaf>* l;

  if (num == 0) return NULL;
  /* allocate branch */
  SecurePointer<Branch>* b = new SecurePointer<Branch>(sizeof(Branch));
  /* fill in children */
  (*b)->next_branch= build_branch(i,j,num-1);

  for (i=0; i<LEAVES_PER_BRANCH; i++) {
    l = build_leaf();
    ((*b)->leaves)[i] = l;
  }
  
  /* fill in values */
  (*b)->R = 2;
  (*b)->X = 40;
  (*b)->alpha = 0;
  (*b)->beta = 0;
  return b;
}

SecurePointer<Leaf>* build_leaf() {
  SecurePointer<Leaf>* l = new SecurePointer<Leaf>(sizeof(Leaf));

  (*l)->D.P = 1;
  (*l)->D.Q = 1;
  return l;
}
