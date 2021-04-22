/* For copyright information, see olden_v1.0/COPYRIGHT */

/*
 * power.h
 *
 * By:  Martin C. Carlisle
 * 6/15/94
 *
 * Header file for the Power Pricing problem
 * adapted from code by Steve Lumetta, Sherry Li, and Ismail Khalil
 * University of California at Berkeley
 *
 */

#include <malloc.h>
typedef struct demand {
  long P;
  long Q;
} Demand;

#include "crosslayer.h"

 #define NUM_FEEDERS 12
 #define LATERALS_PER_FEEDER 24
 #define BRANCHES_PER_LATERAL 6
 #define LEAVES_PER_BRANCH 12

#define F_EPSILON 10
#define G_EPSILON 10
#define H_EPSILON 10
#define ROOT_EPSILON 1

typedef struct root {
  Demand D;
  long theta_R; 
  long theta_I; 
  Demand last;
  long last_theta_R; 
  long last_theta_I;
  struct lateral *feeders[NUM_FEEDERS];
} *Root;  /* sizeof(struct root) = 108 bytes */

typedef struct lateral {
  Demand D;
  long alpha;
  long beta;
  long R;
  long X;
  struct lateral *next_lateral;
  struct branch *branch;
} *Lateral; /* sizeof(struct lateral) = 64 bytes */

typedef struct branch {
  Demand D;
  long alpha;
  long beta;
  long R;
  long X;
  struct branch *next_branch;
  struct leaf *leaves[LEAVES_PER_BRANCH];
} *Branch; /* sizeof(struct branch) = 92 bytes */

typedef struct leaf {
  Demand D;
  long pi_R;
  long pi_I;
} *Leaf;  /* sizeof(struct leaf) = 32 bytes */

/* Prototypes */
Root build_tree(void);
Lateral build_lateral(int i, int num);
Branch build_branch(int i, int j, int num);
Leaf build_leaf();

void Compute_Tree(Root r);
Demand Compute_Lateral(Lateral l, long theta_R, long theta_I,
                       long pi_R, long pi_I);
Demand Compute_Branch(Branch b, long theta_R, long theta_I,
                       long pi_R, long pi_I);
Demand Compute_Leaf(Leaf l, long pi_R, long pi_I);

