/* For copyright information, see olden_v1.0/COPYRIGHT */

/******************************************************************* 
 *  Health.c : Model of the Columbian Health Care System           *
 *******************************************************************/ 

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "health.h"
#include <assert.h>

#include "crosslayer.h"
#include "HPC_C.h"
#ifndef GRANULARITY
#define GRANULARITY 6
#endif

int  max_level;
long max_time;
long long seed;

struct Village *alloc_tree(int level, int label, struct Village *back) {
  if (level == 0)
    return NULL;
  else {
    struct Village       *new;
    int                  i;
    struct Village       *fval[4];

    new = (struct Village *)malloc(sizeof(struct Village));

    for (i = 3; i >= 0; i--)
      fval[i] = alloc_tree(level - 1, label*4 + i + 1, new); 

    atom_select(0);
    new->back = back;
    atom_select(0);
    new->label = label;
    atom_select(0);
    new->seed = label * (IQ + seed); 
    atom_select(0);
    new->hosp.personnel = (int)pow(2, level - 1);
    atom_select(0);
    new->hosp.free_personnel = new->hosp.personnel;
    atom_select(0);
    new->hosp.num_waiting_patients = 0;
    atom_select(0);
    new->hosp.assess.forward = NULL;
    atom_select(0);
    new->hosp.assess.back = NULL;
    atom_select(0);
    new->hosp.assess.patient = NULL;  /* ADDED FOR LLVM [OLDEN BUGS!] */
    atom_select(0);
    new->hosp.waiting.forward = NULL;
    atom_select(0);
    new->hosp.waiting.back = NULL;
    atom_select(0);
    new->hosp.waiting.patient = NULL; /* ADDED FOR LLVM [OLDEN BUGS!] */
    atom_select(0);
    new->hosp.inside.forward = NULL;
    atom_select(0);
    new->hosp.inside.back = NULL;
    atom_select(0);
    new->hosp.inside.patient = NULL;  /* ADDED FOR LLVM [OLDEN BUGS!] */
    atom_select(0);
    new->hosp.up.forward = NULL;      /* ADDED FOR LLVM [OLDEN BUGS!] */
    atom_select(0);
    new->hosp.up.back = NULL;         /* ADDED FOR LLVM [OLDEN BUGS!] */
    atom_select(0);
    new->hosp.up.patient = NULL;      /* ADDED FOR LLVM [OLDEN BUGS!] */
    atom_select(0);
    new->returned.back = NULL;
    atom_select(0);
    new->returned.forward = NULL;

    for (i = 0; i < 4; i++){
      atom_select(0);
      new->forward[i] = fval[i];
    }
    return new;
  }
}


struct Results get_results(struct Village *village) {
  int                    i;
  struct List            *list;
  struct Patient         *p;
  struct Results         fval[4];
  struct Results         r1;

    atom_select(0);
  r1.total_hosps = 0.0;
    atom_select(0);
  r1.total_patients = 0.0;
    atom_select(0);
  r1.total_time = 0.0;

  if (village == NULL) return r1;

  for (i = 3; i > 0; i--) {
    atom_select(0);
    struct Village *V = village->forward[i];
    fval[i] = get_results(V);
  }

    atom_select(0);
  fval[0] = get_results(village->forward[0]);

  for (i = 3; i >= 0; i--) {
    atom_select(0);
    r1.total_hosps    += fval[i].total_hosps;
    atom_select(0);
    r1.total_patients += fval[i].total_patients;
    atom_select(0);
    r1.total_time     += fval[i].total_time;
  }

    atom_select(0);
  list = village->returned.forward;
  while (list != NULL) {
    atom_select(0);
    p = list->patient;
    atom_select(0);
    r1.total_hosps += (float)(p->hosps_visited);
    atom_select(0);
    r1.total_time += (float)(p->time); 
    atom_select(0);
    r1.total_patients += 1.0;
    atom_select(0);
    list = list->forward;
  }

  return r1; 
}

void check_patients_inside(struct Village *village, struct List *list) 
{
  struct List            *l;
  struct Patient         *p;
  int                     t;
  
  while (list != NULL) {
    atom_select(0);
    p = list->patient;
    atom_select(0);
    t = p->time_left;
    atom_select(0);
    p->time_left = t - 1;
    atom_select(0);
    if (p->time_left == 0) {
    atom_select(0);
      t = village->hosp.free_personnel;
    atom_select(0);
      village->hosp.free_personnel = t+1;
    atom_select(0);
      l = &(village->hosp.inside);
      removeList(l, p); 
    atom_select(0);
      l = &(village->returned);
      addList(l, p); }    
    atom_select(0);
    list = list->forward;       /* :) adt_pf detected */
  } 
}

struct List *check_patients_assess(struct Village *village, struct List *list) {
  float rand;
  struct Patient *p;
  struct List *up = NULL;
  long long s;
  int label, t;

  while (list != NULL) {
    atom_select(0);
    p = list->patient;
    atom_select(0);
    t = p->time_left;
    atom_select(0);
    p->time_left = t - 1;
    atom_select(0);
    label = village->label;
    atom_select(0);
    if (p->time_left == 0) { 
    atom_select(0);
      s = village->seed;
      rand = my_rand(s);
    atom_select(0);
      village->seed = (long long)(rand * IM);
    atom_select(0);
      label = village->label;
      if (rand > 0.1 || label == 0) {
        removeList(&village->hosp.assess, p);
        addList(&village->hosp.inside, p);
    atom_select(0);
        p->time_left = 10;
    atom_select(0);
        t = p->time;
    atom_select(0);
        p->time = t + 10; 
      } else {
    atom_select(0);
        t = village->hosp.free_personnel;
    atom_select(0);
        village->hosp.free_personnel = t+1;
        
        removeList(&village->hosp.assess, p);
    atom_select(0);
        up = &village->hosp.up;
        addList(up, p);
      }
    }
    
    atom_select(0);
    list = list->forward;             /* :) adt_pf detected */
  }
  return up;
}

void check_patients_waiting(struct Village *village, struct List *list) {
  int i, t;
  struct Patient *p;
  
  while (list != NULL) {
    atom_select(0);
    i = village->hosp.free_personnel;
    atom_select(0);
    p = list->patient;
    if (i > 0) {
    atom_select(0);
      t = village->hosp.free_personnel;
    atom_select(0);
      village->hosp.free_personnel = t-1;
    atom_select(0);
      p->time_left = 3;
    atom_select(0);
      t = p->time;
    atom_select(0);
      p->time = t + 3;

      removeList(&village->hosp.waiting, p);
      addList(&village->hosp.assess, p); }
    else {
    atom_select(0);
      t = p->time;
    atom_select(0);
      p->time = t + 1; }
    atom_select(0);
    list = list->forward; }         /* :) adt_pf detected */
}


void put_in_hosp(struct Hosp *hosp, struct Patient *patient) {
    atom_select(0);
  int t = patient->hosps_visited;

    atom_select(0);
  patient->hosps_visited = t + 1;
  if (hosp->free_personnel > 0) {
    atom_select(0);
    t = hosp->free_personnel;
    atom_select(0);
    hosp->free_personnel = t-1;
    addList(&hosp->assess, patient); 
    atom_select(0);
    patient->time_left = 3;
    atom_select(0);
    t = patient->time;
    atom_select(0);
    patient->time = t + 3; 
  } else {
    addList(&hosp->waiting, patient); 
  }
}

struct Patient *generate_patient(struct Village *village) 
{
  long long       s,newseed;
  struct Patient *patient;
  float rand;
  int label;
  
    atom_select(0);
  s = village->seed;
  rand = my_rand(s);
    atom_select(0);
  village->seed = (long long)(rand * IM);
    atom_select(0);
  newseed = village->seed;
    atom_select(0);
  label = village->label;
  if (rand > 0.666) {
    patient = (struct Patient *)malloc(sizeof(struct Patient));
    atom_select(0);
    patient->hosps_visited = 0;
    atom_select(0);
    patient->time = 0;
    atom_select(0);
    patient->time_left = 0;
    atom_select(0);
    patient->home_village = village; 
    return patient;
  }
  return NULL; 
}

int main(int argc, char *argv[]) 
{ 
  #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  int atom_props[16] = {0};
  atom_define_bulk(0, atom_props, 16);
  atom_init(GRANULARITY, 0);
  #endif

  struct Results         results;
  struct Village         *top = 0;
  int                    i;
  float total_time, total_patients, total_hosps;  
  
  dealwithargs(argc, argv);
  top = alloc_tree(max_level, 0, top);
  
  chatting("\n\n    Columbian Health Care Simulator\n\n");
  chatting("Working...\n");
  

  hpcInit();
  hpcStartMeasurement();
  for (i = 0; i < max_time; i++) {
    //if ((i % 50) == 0) chatting("%d\n", i);
    sim(top);
  }                          /* :) adt_pf detected */
  
  //printf("Getting Results\n");
  results = get_results(top);              /* :) adt_pf detected */
  total_patients = results.total_patients;
  total_time = results.total_time;
  total_hosps = results.total_hosps;

  hpcEndMeasurement();

  chatting("Done.\n\n");
  chatting("# of people treated:              %f people\n",
	   total_patients);
  chatting("Average length of stay:           %0.2f time units\n", 
	   total_time / total_patients);
  chatting("Average # of hospitals visited:   %f hospitals\n\n",
	   total_hosps / total_patients);

  hpcPrintStats();
  hpcPrintCSV();

  return 0;
}


struct List *sim(struct Village *village)
{
  int                    i;
  struct Patient         *patient;
  struct List            *l, *up;
  struct Hosp            *h;
  struct List            *val[4];
  
  int label;
  if (village == NULL) return NULL;
 
    atom_select(0);
  label = village->label;

  for (i = 3; i > 0; i--) {
    atom_select(0);
    struct Village *V = village->forward[i];
    struct List *L = sim(V);
    atom_select(0);
    val[i] = L;
  }

  val[0] = sim(village->forward[0]);
    atom_select(0);
  h = &village->hosp;

  for (i = 3; i >= 0; i--) {
    struct List *valI = l = val[i];
    if (l != NULL) {
    atom_select(0);
      l = l->forward;
      while (l != NULL) {
	put_in_hosp(h, l->patient);
	removeList(valI, l->patient);
    atom_select(0);
        l = l->forward;
      }
    }
  }

  check_patients_inside(village, village->hosp.inside.forward);
  up = check_patients_assess(village, village->hosp.assess.forward);
  check_patients_waiting(village, village->hosp.waiting.forward);
  
  /*** Generate new patients ***/  
  if ((patient = generate_patient(village)) != NULL) {  
    atom_select(0);
    label = village->label;
    put_in_hosp(&village->hosp, patient);
  }

  return up;
}
