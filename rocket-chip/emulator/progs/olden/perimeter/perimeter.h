/* For copyright information, see olden_v1.0/COPYRIGHT */
#ifdef TORONTO
extern int NumNodes;
#define chatting      printf
#endif

#define NULL 0

#ifndef TORONTO
#include <cm/cmmd.h>
#ifdef FUTURES
#include "future-cell.h"
#endif
#include "mem-ref.h"
#endif

#include "SecurePointer.h"

typedef enum {black, white, grey} Color;
typedef enum {northwest, northeast, southwest, southeast} ChildType;
typedef enum {north, east, south, west} Direction;


typedef struct quad_struct {
  Color color;
  ChildType childtype;

  SecurePointer<struct quad_struct> *nw;
  SecurePointer<struct quad_struct> *ne;
  SecurePointer<struct quad_struct> *sw;
  SecurePointer<struct quad_struct> *se;
  SecurePointer<struct quad_struct> *parent;

} quad_struct, *QuadTree;

template class SecurePointer<struct quad_struct>;


SecurePointer<struct quad_struct>* MakeTree(int size, int center_x, int center_y, int lo_proc,
                  int hi_proc, SecurePointer<struct quad_struct>* parent, ChildType ct, int level);










