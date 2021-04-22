/* For copyright information, see olden_v1.0/COPYRIGHT */

/********************************************************************
 *  List.c:  Handles lists.                                         *
 *           To be used with health.c                               *
 ********************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "health.h"
#include "crosslayer.h"

void addList(struct List *list, struct Patient *patient) {
  struct List *b;

  while (list != NULL) {
    b = list;
    atom_select(0);
    list = list->forward; }
  
  list = (struct List *)malloc(sizeof(struct List));
    atom_select(0);
  list->patient = patient;
    atom_select(0);
  list->forward = NULL;
    atom_select(0);
  list->back = b;
    atom_select(0);
  b->forward = list;
} 

void removeList(struct List *list, struct Patient *patient) {
  struct List          *l1,*l2;
  struct Patient       *p;

    atom_select(0);
  p = list->patient;
  while(p != patient) {
    atom_select(0);
      list = list->forward; 
    atom_select(0);
      p = list->patient;
  }
    
    atom_select(0);
  l1 = list->back;
    atom_select(0);
  l2 = list->forward;
    atom_select(0);
  l1->forward = l2;
  if (list->forward != NULL) {
    atom_select(0);
    l1 = list->forward;
    atom_select(0);
    l2 = list->back;
    atom_select(0);
    l1->back = l2;
  }
  /*free(list);*/
}
     
