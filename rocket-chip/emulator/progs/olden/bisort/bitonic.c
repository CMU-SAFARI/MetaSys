/* For copyright information, see olden_v1.0/COPYRIGHT */

/* =================== PROGRAM bitonic===================== */
/* UP - 0, DOWN - 1 */
#include "node.h"   /* Node Definition */
#include "proc.h"   /* Procedure Types/Nums */
#include <stdio.h>
#include <malloc.h>

#include "SecurePointer.h"

//template class SecurePointer<HANDLE>;

#include "crosslayer.h"
#include "HPC_C.h"
#ifndef GRANULARITY
#define GRANULARITY 6
#endif

#define CONST_m1 10000
#define CONST_b 31415821
#define RANGE 100

int NumNodes, NDim;

int random(int);

int flag=0,foo=0;

SecurePointer<HANDLE>* NewNode(int v) 
{ 
    SecurePointer<HANDLE> * h = new SecurePointer<HANDLE>(sizeof(struct node)); 
    (*h)->value = v; 
	  (*h)->left = NULL; 
	  (*h)->right = NULL; 
    return h;
};

//#define NewNode(h,v,procid) LocalNewNode(h,v)

void InOrder(SecurePointer<HANDLE> *h) {
  SecurePointer<HANDLE> *l, *r;
  if ((h != NULL)) {
    l = (*h)->left;
    r = (*h)->right;
    InOrder(l);
    static unsigned char counter = 0;
    if (counter++ == 0)   /* reduce IO */
      printf("%d @ 0x%x\n",(*h)->value, 0);
    InOrder(r);
  }
}

int mult(int p, int q) {
  int p1, p0, q1, q0;
	
  p1 = p/CONST_m1; p0 = p%CONST_m1;
  q1 = q/CONST_m1; q0 = q%CONST_m1;
  return ((p0*q1+p1*q0) % CONST_m1)*CONST_m1+p0*q0;
}

/* Generate the nth random # */
int skiprand(int seed, int n) {
  for (; n; n--) seed=random(seed);
  return seed;
}

int random(int seed) {
  return mult(seed,CONST_b)+1;
}

SecurePointer<HANDLE> * RandTree(int n, int seed, int node, int level) {
  int next_val,my_name;
  future_cell_int f_left, f_right;
  SecurePointer<HANDLE> * h;
  my_name=foo++;
  if (n > 1) {
    int newnode;
    if (level<NDim)
      newnode = node + (1 <<  (NDim-level-1));
    else
      newnode = node;
    seed = random(seed);
    next_val=seed % RANGE;
    h = NewNode(next_val);
    f_left.value = RandTree((n/2),seed,newnode,level+1);
    f_right.value = RandTree((n/2),skiprand(seed,(n)+1),node,level+1);

    (*h)->left = f_left.value;
    (*h)->right = f_right.value;
  } else {
    h = 0;
  }
  return h;
}

void SwapValue(SecurePointer<HANDLE> *l, SecurePointer<HANDLE> *r) {
  int temp,temp2;
  
  temp = (*l)->value;
  temp2 = (*r)->value;
  (*r)->value = temp;
  (*l)->value = temp2;
} 

void
/***********/
SwapValLeft(SecurePointer<HANDLE> * l,SecurePointer<HANDLE> * r,SecurePointer<HANDLE> * ll,SecurePointer<HANDLE> * rl,int lval,int  rval)
/***********/
{
  (*r)->value = lval;
  (*r)->left = ll;
  (*l)->left = rl;
  (*l)->value = rval;
} 


void
/************/
SwapValRight(SecurePointer<HANDLE> * l, SecurePointer<HANDLE> * r,SecurePointer<HANDLE> * lr,SecurePointer<HANDLE> * rr,int lval,int rval)
/************/
{  
  (*r)->value = lval;
  (*r)->right = lr;
  (*l)->right = rr;
  (*l)->value = rval;
  /*printf("Swap Val Right l 0x%x,r 0x%x val: %d %d\n",l,r,lval,rval);*/
} 

int
/********************/
Bimerge(
/********************/
SecurePointer<HANDLE> *root,
int spr_val,int dir)

{ int rightexchange;
  int elementexchange;
  SecurePointer<HANDLE> *pl,*pll,*plr;
  SecurePointer<HANDLE> *pr,*prl,*prr;
  SecurePointer<HANDLE> *rl;
  SecurePointer<HANDLE> *rr;
  int rv,lv;


  /*printf("enter bimerge %x\n", root);*/
  rv = (*root)->value;

  pl = (*root)->left;
  pr = (*root)->right;
  rightexchange = ((rv > spr_val) ^ dir);
  if (rightexchange)
    {
      (*root)->value = spr_val;
      spr_val = rv;
    }
  
  while ((pl != NULL))
    {
      /*printf("pl = 0x%x,pr = 0x%x\n",pl,pr);*/
      lv = (*pl)->value;        /* <------- 8.2% load penalty */
      pll = (*pl)->left;
      plr = (*pl)->right;       /* <------- 1.35% load penalty */
      rv = (*pr)->value;         /* <------ 57% load penalty */
      prl = (*pr)->left;         /* <------ 7.6% load penalty */
      prr = (*pr)->right;        /* <------ 7.7% load penalty */
      elementexchange = ((lv > rv) ^ dir);
      if (rightexchange)
        if (elementexchange)
          { 
            SwapValRight(pl,pr,plr,prr,lv,rv);
            pl = pll;
            pr = prl;
          }
        else 
          { pl = plr;
            pr = prr;
          }
      else 
        if (elementexchange)
          { 
            SwapValLeft(pl,pr,pll,prl,lv,rv);
            pl = plr;
            pr = prr;
          }
        else 
          { pl = pll;
            pr = prl;
          }
    }
  if (((*root)->left != NULL))
    { 
      int value;
      rl = (*root)->left;
      rr = (*root)->right;
      value = (*root)->value;

      (*root)->value=Bimerge(rl,value,dir);
      spr_val=Bimerge(rr,spr_val,dir);
    }
  /*printf("exit bimerge %x\n", root);*/
  return spr_val;
} 

int
/*******************/
Bisort(
/*******************/
SecurePointer<HANDLE> *root,
int spr_val,int dir)

{ SecurePointer<HANDLE> *l;
  SecurePointer<HANDLE> *r;
  int val;
  /*printf("bisort %x\n", root);*/
  if (((*root)->left == NULL))  /* <---- 8.7% load penalty */
    { 
     if ((((*root)->value > spr_val) ^ dir))
        {
	  val = spr_val;
	  spr_val = (*root)->value;
	  (*root)->value =val;
	}
    }
  else 
    {
      int ndir;
      l = (*root)->left;
      r = (*root)->right;
      val = (*root)->value;
      /*printf("root 0x%x, l 0x%x, r 0x%x\n", root,l,r);*/
      (*root)->value=Bisort(l,val,dir);
      ndir = !dir;
      spr_val=Bisort(r,spr_val,ndir);
      spr_val=Bimerge(root,spr_val,dir);
    }
  /*printf("exit bisort %x\n", root);*/
  return spr_val;
} 

int main(int argc, char **argv) {
  int sval;
  int n;
   
  #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  uint32_t atom_props[16] = {0};
  atom_define_bulk(0, atom_props, 16);
  atom_init(GRANULARITY, 0);
  #endif

  n = dealwithargs(argc,argv);

  printf("Bisort with %d size of dim %d\n", n, NDim);

  SecurePointer<HANDLE> * h = RandTree(n,12345768,0,0);
  sval = random(245867) % RANGE;
  if (flag) {
    InOrder(h);
    printf("%d\n",sval);
  }
  printf("**************************************\n");
  printf("BEGINNING BITONIC SORT ALGORITHM HERE\n");
  printf("**************************************\n");

  hpcInit();
  hpcStartMeasurement();
  sval=Bisort(h,sval,0);


  sval=Bisort(h,sval,1);

  hpcEndMeasurement();
  hpcPrintStats();
  hpcPrintCSV();
  return 0;
} 







