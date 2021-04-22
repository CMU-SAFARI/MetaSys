#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include "crosslayer.h"
#include "HPC.h"

static int NODESIZE;
static int createSize = 16;
static int mapSize;
#define STRUCTSIZE (1 << 25)

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

struct Node
{
  struct Node *next;
  uint32_t data[];
};

uint32_t atom_attributes[16];

void traverse(struct Node *n)
{
  // long int ct = 0;
  while (n != NULL)
    n = n->next;
  }

void insert(struct Node *insertionpt, const uint32_t id)
{
  struct Node *cur = (struct Node*)malloc(NODESIZE);
  cur->next = NULL;
  for (size_t i = 0; i < (NODESIZE-8)/sizeof(uint32_t); i++)
    cur->data[i] = id;
  
  if(insertionpt->next!=NULL)
  {
    struct Node *next = insertionpt->next;
    cur->next = next;
  }
  insertionpt->next = cur;
}

void insertBench(struct Node* insertionpt, const uint32_t id)
{
  struct Node *cur = (struct Node*)malloc(NODESIZE);

  #ifndef NOATOM
  #ifndef LOOKUPONLY
  atom_map((void*) cur, mapSize, 0);
  atom_activate(0);
  #endif
  #endif

  cur->next = NULL;
  for (size_t i = 0; i < (NODESIZE-8)/sizeof(uint32_t); i++)
    cur->data[i] = id;
  
  if(insertionpt->next!=NULL)
  {
    struct Node *next = insertionpt->next;
    cur->next = next;
  }
  insertionpt->next = cur;
  #ifndef NOATOM
  #ifndef LOOKUPONLY
  atom_deactivate(0);
  #endif
  #endif
}

struct Node * findNode(struct Node *head, int i)
{
  while(i>0 && head->next)
  {
    i--;
    head = head->next;
  }
  return head;
}

struct Node * findNodeBench(struct Node *head, uint32_t id)
{
  while(head->next && head->data[0] != id)
    head = head->next;
  return head;
}

void doTest(struct Node *head, int size, int indices[])
{
  // Do 5K insertions
  // Create & map atom to newly created linked list
  for(int i = 0 ; i < 5000 ; i++)
  {
    Node* interm = findNodeBench(head, indices[i]);
    insertBench(interm, size);
    size++;
  }
}

int main()
{
  struct Node* head = NULL;
  long int size = 0;
  printf("Enter Nodesize:\n");
  //std::cout<<"Enter Nodesize:"<<std::endl;
  //std::cin >> NODESIZE;
  //std::cin >> createSize;

  scanf ("%d",&NODESIZE);
  scanf ("%d",&createSize);
  long int maxSize = STRUCTSIZE / NODESIZE;
  head = (struct Node*)malloc(NODESIZE);
  size++;

  memcpy(head->data, "head",NODESIZE-8);
  head->next = NULL;
  traverse(head);
  atom_attributes[0] = 64;

  #ifdef NOATOM  
  atom_init(GRANULARITY, true);
  #else
  atom_init(GRANULARITY, false);
  #endif

  #ifndef NOATOM
  #ifndef LOOKUPONLY
  // adjust mapsize
  mapSize = (NODESIZE < (1<<GRANULARITY)) ? 1 :
              NODESIZE / (1<<GRANULARITY); 
  atom_define(0, 0, 64);
  atom_map((void*) head, mapSize, 0);
  atom_deactivate(0);
  #endif
  #endif
  //construct linked list
  srand(1337);
  while(size<maxSize){
    int a = rand();
    int r = a % size;
    struct Node *ipoint = findNode(head, r);
    insert(ipoint, size);
    size++;
    if(size%100==0)
    {
      printf("construction heartbeat: %li\n",size);
    }
  }

  printf("Prepare test indices\n");
  int testIndices[5000]; 
  for (int i = 0 ; i < 5000 ; i++)
    testIndices[i] = rand() % size;

  printf("Warmup run\n");
  traverse(head);

  printf("Begin test\n");
  HPC perfMon;
  perfMon.startMeasurement();
  doTest(head, size, testIndices);
  perfMon.endMeasurement();
  printf("End test\n");
  perfMon.printStats();
  perfMon.printCSV();

  return 0;
}
