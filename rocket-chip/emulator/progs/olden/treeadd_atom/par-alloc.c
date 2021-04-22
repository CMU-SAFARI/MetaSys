/* For copyright information, see olden_v1.0/COPYRIGHT */

/* tree-alloc.c
 */

#ifndef TORONTO
#include "mem-ref.h"
#include "future-cell.h"
#endif
#include "crosslayer.h"
#include <malloc.h>
#include "tree.h"

tree_t *TreeAlloc (int level, int lo, int proc) {
  if (level == 0)
    return NULL;
  else {
    struct tree *new, *right, *left;
    new = (struct tree *) malloc(sizeof(tree_t));
    left = TreeAlloc(level -1, lo+proc/2, proc/2);
    right=TreeAlloc(level-1,lo,proc/2);
    atom_select(0);
    new->val = 1;
    atom_select(0);
    new->left = (struct tree *) left;
    atom_select(0);
    new->right = (struct tree *) right;
    return new;
  }
}
