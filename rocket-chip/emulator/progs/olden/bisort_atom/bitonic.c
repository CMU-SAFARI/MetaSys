/* For copyright information, see olden_v1.0/COPYRIGHT */

/* =================== PROGRAM bitonic===================== */
/* UP - 0, DOWN - 1 */
#include "node.h"   /* Node Definition */
#include "proc.h"   /* Procedure Types/Nums */
#include <stdio.h>
#include <malloc.h>

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

#define LocalNewNode(h,v) \
{ \
    h = (HANDLE *) malloc(sizeof(struct node)); \
      h->value = v; \
	h->left = NIL; \
	  h->right = NIL; \
	  };

#define NewNode(h,v,procid) LocalNewNode(h,v)

void InOrder(HANDLE *h) {
  HANDLE *l, *r;
  if ((h != NIL)) {
    l = h->left;
    r = h->right;
    InOrder(l);
    static unsigned char counter = 0;
    if (counter++ == 0)   /* reduce IO */
      printf("%d @ 0x%x\n",h->value, 0);
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

HANDLE* RandTree(int n, int seed, int node, int level) {
  int next_val,my_name;
  future_cell_int f_left, f_right;
  HANDLE *h;
  my_name=foo++;
  if (n > 1) {
    int newnode;
    if (level<NDim)
      newnode = node + (1 <<  (NDim-level-1));
    else
      newnode = node;
    seed = random(seed);
    next_val=seed % RANGE;
    NewNode(h,next_val,node);
    f_left.value = RandTree((n/2),seed,newnode,level+1);
    f_right.value = RandTree((n/2),skiprand(seed,(n)+1),node,level+1);

    h->left = f_left.value;
    h->right = f_right.value;
  } else {
    h = 0;
  }
  return h;
}

void SwapValue(HANDLE *l, HANDLE *r) {
  int temp,temp2;
  
      atom_select(0);
  temp = l->value;
      atom_select(0);
  temp2 = r->value;
      atom_select(0);
  r->value = temp;
      atom_select(0);
  l->value = temp2;
} 

void
/***********/
SwapValLeft(l,r,ll,rl,lval,rval)
/***********/
HANDLE *l;
HANDLE *r;
HANDLE *ll;
HANDLE *rl;
int lval, rval;
{
      atom_select(0);
  r->value = lval;
      atom_select(0);
  r->left = ll;
      atom_select(0);
  l->left = rl;
      atom_select(0);
  l->value = rval;
} 


void
/************/
SwapValRight(l,r,lr,rr,lval,rval)
/************/
HANDLE *l;
HANDLE *r;
HANDLE *lr;
HANDLE *rr;
int lval, rval;
{  
      atom_select(0);

  r->value = lval;
      atom_select(0);
  r->right = lr;
      atom_select(0);
  l->right = rr;
      atom_select(0);
  l->value = rval;
  /*printf("Swap Val Right l 0x%x,r 0x%x val: %d %d\n",l,r,lval,rval);*/
} 

int
/********************/
Bimerge(root,spr_val,dir)
/********************/
HANDLE *root;
int spr_val,dir;

{ int rightexchange;
  int elementexchange;
  HANDLE *pl,*pll,*plr;
  HANDLE *pr,*prl,*prr;
  HANDLE *rl;
  HANDLE *rr;
  int rv,lv;


  /*printf("enter bimerge %x\n", root);*/
      atom_select(0);
  rv = root->value;

      atom_select(0);
  pl = root->left;
      atom_select(0);
  pr = root->right;
  rightexchange = ((rv > spr_val) ^ dir);
  if (rightexchange)
    {
      atom_select(0);
      root->value = spr_val;
      spr_val = rv;
    }
  
  while ((pl != NIL))
    {
      /*printf("pl = 0x%x,pr = 0x%x\n",pl,pr);*/
      atom_select(0);
      lv = pl->value;        /* <------- 8.2% load penalty */
      atom_select(0);
      pll = pl->left;
      atom_select(0);
      plr = pl->right;       /* <------- 1.35% load penalty */
      atom_select(0);
      rv = pr->value;         /* <------ 57% load penalty */
      atom_select(0);
      prl = pr->left;         /* <------ 7.6% load penalty */
      atom_select(0);
      prr = pr->right;        /* <------ 7.7% load penalty */
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
      atom_select(0);
  if ((root->left != NIL))
    { 
      int value;
      atom_select(0);
      rl = root->left;
      atom_select(0);
      rr = root->right;
      atom_select(0);
      value = root->value;

      root->value=Bimerge(rl,value,dir);
      spr_val=Bimerge(rr,spr_val,dir);
    }
  /*printf("exit bimerge %x\n", root);*/
  return spr_val;
} 

int
/*******************/
Bisort(root,spr_val,dir)
/*******************/
HANDLE *root;
int spr_val,dir;

{ HANDLE *l;
  HANDLE *r;
  int val;
  /*printf("bisort %x\n", root);*/
  atom_select(0);
  if ((root->left == NIL))  /* <---- 8.7% load penalty */
    { 
      atom_select(0);
     if (((root->value > spr_val) ^ dir))
        {
	  val = spr_val;
      atom_select(0);
	  spr_val = root->value;
      atom_select(0);
	  root->value =val;
	}
    }
  else 
    {
      int ndir;
      atom_select(0);
      l = root->left;
      atom_select(0);
      r = root->right;
      atom_select(0);
      val = root->value;
      /*printf("root 0x%x, l 0x%x, r 0x%x\n", root,l,r);*/
      root->value=Bisort(l,val,dir);
      ndir = !dir;
      spr_val=Bisort(r,spr_val,ndir);
      spr_val=Bimerge(root,spr_val,dir);
    }
  /*printf("exit bisort %x\n", root);*/
  return spr_val;
} 

int main(int argc, char **argv) {
  HANDLE *h;
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

  h = RandTree(n,12345768,0,0);
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







