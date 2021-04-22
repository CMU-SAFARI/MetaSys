#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <list>

#include <iostream>
#include "XMemLib.h"
#include "HPC.h"

#define NODE_SIZE 4096
#define STRUCT_SIZE (1 << 24) // 16 MB large

#ifndef GRANULARITY
#define GRANULARITY 9
#endif

struct TreeNode
{
  struct TreeNode *left; //8
  struct TreeNode *right; //8
  struct TreeNode *parent; //8
  int key; // 4
  char data[]; //NODE_SIZE - 28
};

void insert(TreeNode* newNode,TreeNode* head) {
  if(head->key > newNode->key) {
    if(head->left == NULL) {
      newNode->parent = head;
      head->left = newNode;
    }
    else insert(newNode, head->left);
  }
  else {
    if(head->right == NULL) {
      head->right = newNode;
      newNode->parent = head;
    }
    else insert(newNode, head->right);
  }
}

void BFS(std::list<TreeNode*> &q,TreeNode* node){
 // printf("%d: %s\n",node->key, node->data);
  if(node->left!=NULL) q.push_back(node->left);
  if(node->right!=NULL) q.push_back(node->right);
  if(!q.empty()) {
    TreeNode* front = q.front();
    q.pop_front();
    BFS(q,front);
  }
}
void traverse(TreeNode* root){
   std::list<TreeNode*> q;
  BFS(q,root);
}

int main(){
  srand(time(NULL));
  //temporary fix for segfault caused by NODE_SIZE
  long int size = 0;
  long int maxSize = STRUCT_SIZE / NODE_SIZE; // change this to STRUCT_SIZE / NODE_SIZE

  struct TreeNode *head =(struct TreeNode *)malloc(NODE_SIZE);
  size++;

  memcpy(head->data,"first",NODE_SIZE-28); // change this to NODE_SIZE-28
  head->key = rand() % maxSize;

  head->parent = NULL;
  head->right= NULL;
  head->left = NULL;

  std::cout << "successfully added head." << std::endl;

  Atom a1((void *) head,0,GRANULARITY);
  a1.map(NODE_SIZE/(1<<GRANULARITY));

  while(size<maxSize) {
    int key = rand()%maxSize;
    struct TreeNode *newNode = (struct TreeNode *)malloc(NODE_SIZE);

    Atom temp((void *)newNode,0,GRANULARITY);
    temp.map(NODE_SIZE/(1<<GRANULARITY));

    memcpy(newNode->data,"new node",NODE_SIZE-28);
    newNode->key = key;
    newNode->parent = NULL;
    newNode->right = NULL;
    newNode->left = NULL;

    insert(newNode,head);
    size++;
    if(!(size%100)) {
      printf("construction heartbeat: %li\n",size);
    }
  }
  printf("Begin test\n");
  HPC perfMon;
  perfMon.startMeasurement();
  traverse(head);
  perfMon.endMeasurement();
  printf("End test\n");
  perfMon.printStats();
  perfMon.printCSV();
}

