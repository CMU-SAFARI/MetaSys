/* For copyright information, see olden_v1.0/COPYRIGHT */

/********************************************************************
 *  List.c:  Handles lists.                                         *
 *           To be used with health.c                               *
 ********************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "health.h"
#include "SecurePointer.h"

void addList(SecurePointer<struct List> *list, SecurePointer<struct Patient> *patient) {
  SecurePointer<struct List> *b;

  while (list != NULL) {
    b = list;
    list = (*list)->forward; }
  
  list = new SecurePointer<struct List>(sizeof(struct List));
  (*list)->patient = patient;
  (*list)->forward = NULL;
  (*list)->back = b;
  (*b)->forward = list;
} 

void removeList(SecurePointer<struct List> *list, SecurePointer<struct Patient> *patient) {
  SecurePointer<struct List>          *l1,*l2;
  SecurePointer<struct Patient>       *p;

  p = (*list)->patient;
  while(p != patient) {
      list = (*list)->forward; 
      p = (*list)->patient;
  }
    
  l1 = (*list)->back;
  l2 = (*list)->forward;
  (*l1)->forward = l2;
  if ((*list)->forward != NULL) {
    l1 = (*list)->forward;
    l2 = (*list)->back;
    (*l1)->back = l2;
  }
  /*free(list);*/
}
     
