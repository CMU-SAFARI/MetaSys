/* For copyright information, see olden_v1.0/COPYRIGHT */

/* tree.h
 */

#ifdef TORONTO
#include <stdio.h>
#include "SecurePointer.h"
#define chatting printf
#define PLAIN
#endif

typedef struct tree {
    int		val;
    SecurePointer<struct tree> *left, *right;
} tree_t;

template class SecurePointer<tree_t>;

template <typename T>
uint64_t SecurePointer<T>::sanityCounter = 0;

extern SecurePointer<tree_t>* TreeAlloc (int level, int lo, int hi);
int TreeAdd (SecurePointer<tree_t> *t);







