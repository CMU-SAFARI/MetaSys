/* For copyright information, see olden_v1.0/COPYRIGHT */

/* =============== NODE STRUCTURE =================== */
#include "SecurePointer.h"

struct node { 
  int value;
  SecurePointer<struct node> *left;
  SecurePointer<struct node> *right;
};

typedef struct node HANDLE;
template class SecurePointer<HANDLE>;

typedef struct future_cell_int{
  SecurePointer<node> *value;
} future_cell_int;

//template class SecurePointer<HANDLE>;
//#define NIL ((HANDLE *) 0)