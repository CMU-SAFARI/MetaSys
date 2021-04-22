#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <iostream>
#include "XMemLib.h"
#include "HPC.h"

static int NODESIZE;
static int createSize;
static int STRUCTSIZE;

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

struct Node
{
  struct Node *next;
  char data[];
};

uint32_t atom_attributes[16];

void traverseMap(struct Node *n)
{
    // long int ct = 0;
  while (n != NULL)
  {
    #ifndef NOATOM
    // Map-Unmap atoms as we traverse
    Atom a1((void*) n, 0, GRANULARITY, atom_attributes, createSize);
    a1.map(NODESIZE/(1<<GRANULARITY) + 1);
    #endif

    char * n_data = n -> data;
    for(size_t i = 0 ; i < NODESIZE - 8; i++){
      n_data[i] = n_data[i] + i;
    }
    n = n->next;

    #ifndef NOATOM
    a1.unmap(NODESIZE/(1<<GRANULARITY) + 1);
    #endif
  }
}

void traverse(struct Node *n)
{
  // long int ct = 0;
  while (n != NULL)
  {
    // ct++;
    // if(ct%10000==0)
    // {
    //  printf("heartbeat: %li\n",ct);
    // }
    // printf("%s\n", n->data);

    char * n_data = n -> data;
    for(size_t i = 0 ; i < NODESIZE - 8; i++){
      n_data[i] = n_data[i] + i;
    }
    n = n->next;
  }
}

void insert(struct Node *insertionpt)
{
  struct Node *cur = (struct Node*)malloc(NODESIZE);
  // Atom a1((void*) cur, 0, GRANULARITY);
  // a1.map(NODESIZE/(1<<GRANULARITY) + 1);
  cur->next = NULL;
  memcpy(cur->data,"ataberk",NODESIZE-8);
  if(insertionpt->next!=NULL)
  {
    struct Node *next = insertionpt->next;
    cur->next = next;
  }
  insertionpt->next = cur;
}
struct Node * findNode(struct Node *head,int i)
{
  while(i>0 && head->next)
  {
    i--;
    head = head->next;
  }
  return head;
}
int main()
{
  struct Node* head = NULL;
  long int size = 0;
  std::cout<<"Enter Nodesize:"<<std::endl;
  std::cin >> NODESIZE;
  std::cin >> createSize;
  STRUCTSIZE = NODESIZE * 2048;
  long int maxSize = STRUCTSIZE / NODESIZE;
  head = (struct Node*)malloc(NODESIZE);
  size++;

  memcpy(head->data, "head",NODESIZE-8);
  head->next = NULL;
  traverse(head);

  Atom a1((void*) head, 0, GRANULARITY, atom_attributes, createSize);
  // a1.map(NODESIZE/(1<<GRANULARITY) + 1);

  //construct linked list
  srand(time(NULL));
  while(size<maxSize){
    int a = rand();
    int r = a % size;
    struct Node *ipoint = findNode(head, r);
    insert(ipoint);
    size++;
    if(size%100==0)
    {
      printf("construction heartbeat: %li\n",size);
    }
  }

  printf("Warmup run\n");
  traverse(head);

  printf("Begin test\n");
  HPC perfMon;
  perfMon.startMeasurement();
  traverseMap(head);
  perfMon.endMeasurement();
  printf("End test\n");
  perfMon.printStats();
  perfMon.printCSV();

  return 0;
}
