/* For copyright information, see olden_v1.0/COPYRIGHT */

/****************************************************************
 * health.h: header file for health.c                           *
 ****************************************************************/


#ifndef _HEALTH
#define _HEALTH

#include <stdio.h>
#include <stdlib.h>
#include "SecurePointer.h"

#define chatting printf

#define IA 16807
#define IM 2147483647
#define AM (1.0 / IM)
#define IQ 127773
#define IR 2836
#define MASK 123459876

extern int  max_level;
extern long max_time;
extern long long seed;


struct Results {
  float                   total_patients;
  float                   total_time;
  float                   total_hosps; 
};

struct Patient {
  int                    hosps_visited;
  int                    time;
  int                    time_left;
  SecurePointer<struct Village> *home_village;
};


struct List {
  SecurePointer<struct List>    *forward;
  SecurePointer<struct Patient> *patient;
  SecurePointer<struct List>    *back;
};

struct Hosp {
#if 1
  int                    personnel; 
  int                    free_personnel; 
  int                    num_waiting_patients; 
  SecurePointer<struct List>            *waiting; 
  SecurePointer<struct List>            *assess; 
  SecurePointer<struct List>            *inside;
  SecurePointer<struct List>            *up;
#else
  int                    free_personnel; 
  struct List            waiting;
  struct List            assess;
  struct List            inside;
  struct List            up;
  int                    personnel; 
  int                    num_waiting_patients; 
#endif
};
 
struct Village {
#if 1
  SecurePointer<struct Village>         *forward[4];
  SecurePointer<struct Village>         *back;
  SecurePointer<struct List>            *returned;
  SecurePointer<struct Hosp>            *hosp;   
  int                    label;
  long long              seed;
#else
  struct Hosp            hosp;   
  long                   seed;
  struct Village         *forward[4];
  int                    label;
  struct List            returned;
  struct Village         *back;
#endif
};

template class SecurePointer<struct Patient>;
template class SecurePointer<struct Village>;
template class SecurePointer<struct List>;
template class SecurePointer<struct Hosp>;

SecurePointer<struct Village> *alloc_tree(int level, int label, SecurePointer<struct Village> *back);
void dealwithargs(int argc, char *argv[]);
float my_rand(long long idum);
SecurePointer<struct Patient> *generate_patient(SecurePointer<struct Village> *village);
void put_in_hosp(SecurePointer<struct Hosp> *hosp, SecurePointer<struct Patient> *patient);
void addList(SecurePointer<struct List> *list, SecurePointer<struct Patient> *patient);
void removeList(SecurePointer<struct List> *list, SecurePointer<struct Patient> *patient);
SecurePointer<struct List> *sim(SecurePointer<struct Village> *village);
void check_patients_inside(SecurePointer<struct Village> *village, SecurePointer<struct List> *list);
SecurePointer<struct List> *check_patients_assess(SecurePointer<struct Village> *village, SecurePointer<struct List> *list);
void check_patients_waiting(SecurePointer<struct Village> *village, SecurePointer<struct List> *list);
float get_num_people(SecurePointer<struct Village> *village);
float get_total_time(SecurePointer<struct Village> *village);
float get_total_hosps(SecurePointer<struct Village> *village);
struct Results get_results(SecurePointer<struct Village>*village);

#endif

