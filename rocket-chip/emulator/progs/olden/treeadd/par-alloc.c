/* For copyright information, see olden_v1.0/COPYRIGHT */

/* tree-alloc.c
 */

#ifndef TORONTO
#include "mem-ref.h"
#include "future-cell.h"
#endif

#include "tree.h"
#include <stdlib.h>

SecurePointer<tree_t>* TreeAlloc (int level, int lo, int proc) {
  if (level == 0)
    return NULL;
  else {
    SecurePointer<tree_t> *secure_nword = new SecurePointer<tree_t>(sizeof(tree_t));
    (*secure_nword)->val = 1;
    (*secure_nword)->left = TreeAlloc(level -1, lo+proc/2, proc/2);
    (*secure_nword)->right = TreeAlloc(level-1,lo,proc/2);
    return secure_nword;
  }
}
