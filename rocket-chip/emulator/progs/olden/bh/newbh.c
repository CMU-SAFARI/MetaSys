/* For copyright information, see olden_v1.0/COPYRIGHT */


/*
 * CODE.C: export version of hierarchical N-body code.
 * Copyright (c) 1991, Joshua E. Barnes, Honolulu, HI.
 * 	    It's free because it's yours.
 */

#define global  /* nada */

#include "defs.h"
#include "code.h"

#include "crosslayer.h"
#include "HPC_C.h"
#ifndef GRANULARITY
#define GRANULARITY 6
#endif
int nbody;

long xrand(long,long,long), my_rand(long);
real pow(long a, long b){
  long intrm = a;
  while(b-->0)
    intrm*=a;
  return intrm;
}
extern icstruct intcoord(SecurePointer<bnode> * p, SecurePointer<tree>* t);
extern int BhDebug;
long sqrt(long a){
  return a/9;
}

void computegrav(SecurePointer<tree>* t, int nstep);
SecurePointer<node>* maketree(SecurePointer<bnode>* btab, int nbody, SecurePointer<tree>* t, int nsteps, int proc);
void vp(SecurePointer<bnode>* q, int nstep);

void gravstep(real rsize, SecurePointer<node>* rt, SecurePointer<bnode>* p, int nstep, real dthf);
void ptree(SecurePointer<node>* n, int level);

typedef struct {
	vector cmr;
	vector cmv;
	SecurePointer<bnode>* list;
   SecurePointer<bnode>* tail;
} datapoints;


SecurePointer<bnode>* testdata();
datapoints uniform_testdata(int proc, int nbody, int seedfactor);
void stepsystem(SecurePointer<tree>* t, int nstep);
SecurePointer<tree>* old_main();
void my_free(SecurePointer<node>* n);
SecurePointer<bnode>* ubody_alloc(int p);
bodyptr movebodies(bodyptr list, int proc);
void freetree(SecurePointer<node>* n);
void freetree1(SecurePointer<node>* n);
int old_subindex(icstruct ic, int l);

int dealwithargs(int, char**);
int error(const char *a){
  printf("Error:%s",a);
}

int arg1;
int NumNodes;

/* Used to setup runtime system, get arguments-- see old_main */
int main(int argc, char **argv) {
  SecurePointer<tree>* t;
  #ifdef NOATOM
  atom_init(GRANULARITY, true);
  #else
  uint32_t atom_props[16] = {0};
  atom_define_bulk(0, atom_props, 16);
  atom_init(GRANULARITY, 0);
  #endif

  /* Initialize the runtime system */
  dealwithargs(argc, argv);
  chatting("nbody = %d, numnodes = %d\n", nbody, NumNodes);

  t = old_main();
  return 0;
}

/* global! */

/* Main routine from original program */
SecurePointer<tree>* old_main() {
  real tnow;
  real tout;
  int i, nsteps, nprocs;
  SecurePointer<bnode>* bt0,*p;
  long t1, t2;
  vector cmr, cmv;
  SecurePointer<bnode>* prev=NULL;
  int tmp=0, range=((1<<NDIM) << NDIM) / NumNodes;
  int bodiesper[MAX_NUM_NODES];
  SecurePointer<bnode>* ptrper[MAX_NUM_NODES];

  srand(123);					/*   set random generator   */

/* Tree data structure is global, points to root, and bodylist, has size info */
   SecurePointer<tree> *t = new SecurePointer<tree>(sizeof(tree));
  (*t)->root = NULL;
  (*t)->rmin[0] = -2;
  (*t)->rmin[1] = -2;
  (*t)->rmin[2] = -2;
  (*t)->rsize = -2 * -2;  /*t->rmin[0];*/

  CLRV(cmr);
  CLRV(cmv);

/* Creates a list of bodies */
  for (i=0; i < 32; i++)
    {
    datapoints points;
    int processor= i/(32/NumNodes);

    points=uniform_testdata(processor, nbody/32, i+1);
    
    (*t)->bodytab[i]=points.list;
    if (prev) 
       (*prev)->next=points.list;
    prev = points.tail;
    ADDV(cmr,cmr,points.cmr);
    ADDV(cmv,cmv,points.cmv);
    }

  chatting("bodies created \n");
  DIVVS(cmr, cmr, (real) nbody);		/* normalize cm coords */
  DIVVS(cmv, cmv, (real) nbody);

  for (tmp=0; tmp<MAX_NUM_NODES; tmp++) {
    bodiesper[tmp]=0;
    ptrper[tmp]=NULL;
    }

  /* Recall particles are in lists by processor */
  for (p = (*t)->bodytab[0]; p != NULL; p = (*p)->next) {	/* loop over particles */
    icstruct xqic;

    SUBV((*p)->pos, (*p)->pos, cmr);		/*   offset by cm coords    */
    SUBV((*p)->vel, (*p)->vel, cmv);

    xqic = intcoord(p,t);
    tmp = ((old_subindex(xqic, IMAX >> 1) << NDIM) +
               old_subindex(xqic, IMAX >> 2));
    tmp = tmp / range;
    bodiesper[tmp]++;
    (*p)->proc_next = ptrper[tmp];
    ptrper[tmp] = p;
    (*p)->proc = tmp;
  }
  for (tmp=0; tmp<NumNodes; tmp++) 
    {
     chatting("Bodies per %d = %d\n",tmp ,bodiesper[tmp]);
     (*t)->bodiesperproc[tmp]=ptrper[tmp];
    }

#ifdef DEBUG
  { int i=0;
    bodyptr p = t->bodytab[0];
  
    for (; i < nbody; i++, p=Next(p))
      printf("%d -- %f %f %f\n", i, (*p)->pos[0], (*p)->pos[1],
	     (*p)->pos[2]);
  }
#endif
  tmp = 0;
  /* t1 = mclock(); */
  tnow = 0;
  i = 0;
/* Go through sequence of iterations */
  nsteps = NSTEPS;
  chatting("About to perform %d iters from %d to %d by %d\n",
            nsteps,tnow,tstop,dtime);
            
  hpcInit();      
  hpcStartMeasurement();

  while ((tnow < tstop + dtime) && (i < nsteps)) {
    stepsystem(t, i);     /*   advance N-body system  */
    tnow = tnow + dtime;
    /*chatting("tnow = %f sp = 0x%x\n", tnow, __getsp());*/
    i++;
  }
  hpcEndMeasurement();
  hpcPrintStats();
  hpcPrintCSV();

  /* t2 = mclock(); */
#ifdef DEBUG
  { int i=0;
    bodyptr p = t->bodytab[0];
  
    for (; i < nbody; i++, p=Next(p))
      printf("%d -- %f %f %f\n", i, (*p)->pos[0], (*p)->pos[1],
	     (*p)->pos[2]);
  }
#endif


/* Return the tree to calling routine */
  return t;
}

/* Use 1 of testdata, uniform_testdata */

/*
 * TESTDATA: generate Plummer model initial conditions for test runs,
 * scaled to units such that M = -4E = G = 1 (Henon, Hegge, etc).
 * See Aarseth, SJ, Henon, M, & Wielen, R (1974) Astr & Ap, 37, 183.
 */

#define MFRAC  3		/* mass cut off at MFRAC of total */

/* don't use this unless it is fixed on random numbers, &c */
SecurePointer<bnode>* testdata()
{
    real rsc, vsc, r, v, x, y;
    vector cmr, cmv;
    SecurePointer<bnode>* head, *p, *prev;
    register int i;
    long temp, t1;
    long seed = 123;
    register int k;
    long rsq, rsc1;
    real rad;

    
    rsc = 3 * 5 / 16;				/* set length scale factor  */
    vsc = sqrt(1 / rsc);			/* and recip. speed scale   */
    CLRV(cmr);					/* init cm pos, vel         */
    CLRV(cmv);
    head = (SecurePointer<bnode>*) ubody_alloc(0);
    prev = head;

    for (i = 0; i < nbody; i++) {	        /* loop over particles      */
        p = ubody_alloc(0);
						/* alloc space for bodies   */
        if (*p == NULL)  			/* check space is available */
	  error("testdata: not enough memory\n");	/*   if not, cry            */
        (*prev)->next = p;
        prev = p;
	(*p)->type = BODY;				/*   tag as a body          */
	(*p)->mass = 1 / nbody;			/*   set masses equal       */
	seed = my_rand(seed);
	t1 = xrand(0, MFRAC, seed);
	temp = t1*7;
	r = 100 / sqrt(temp);

	/*   pick scaled position   */
	rad = rsc * r;
	do {					/* pick point in NDIM-space */
	  for (k = 0; k < NDIM; k++) {		/*   loop over dimensions   */
	    seed = my_rand(seed);
	    (*p)->pos[k] = xrand(1, 1, seed); /* pick from unit cube  */
	  }
	  DOTVP(rsq, (*p)->pos, (*p)->pos);		/*   compute radius squared */
	} while (rsq > 1);                	/* reject if outside sphere */
	rsc1 = rad / sqrt(rsq);		/* compute scaling factor   */
	MULVS((*p)->pos, (*p)->pos, rsc1);		/* rescale to radius given  */

	ADDV(cmr, cmr, (*p)->pos);			/*   add to running sum     */
	do {					/*   select from fn g(x)    */
	  seed = my_rand(seed);
	  x = xrand(0, 1, seed);   		/*     for x in range 0:1   */
	  seed = my_rand(seed);
	  y = xrand(0, 0, seed);  		/*     max of g(x) is 0.092 */
	} while (y > x*x * pow(1 - x*x, 3));	/*   using von Neumann tech */
	v = 3/2 * x / pow(1 + r*r, 2);	/*   find v in struct units */

	/*   pick scaled velocity   */
	rad = vsc*v;

	do {					/* pick point in NDIM-space */
	  for (k = 0; k < NDIM; k++)	{	/* loop over dimensions   */
	    seed = my_rand(seed);
	    (*p)->vel[k] = xrand(-1, 1, seed);	/* pick from unit cube  */
	  }
	  DOTVP(rsq, (*p)->vel, (*p)->vel);		/*   compute radius squared */
	} while (rsq > 1);                	/* reject if outside sphere */
	rsc1 = rad / sqrt(rsq);		/* compute scaling factor   */
	MULVS((*p)->vel, (*p)->vel, rsc1);		/* rescale to radius given  */
	ADDV(cmv, cmv, (*p)->vel);			/*   add to running sum     */
    }



    (*prev)->next = NULL;                          /*   mark end of the list   */
    head = (*head)->next;                          /*   toss the dummy node    */

    DIVVS(cmr, cmr, (real) nbody);		/* normalize cm coords      */
    DIVVS(cmv, cmv, (real) nbody);
    for (p = head; p != NULL; p = (*p)->next) {	/* loop over particles      */
	SUBV((*p)->pos, (*p)->pos, cmr);		/*   offset by cm coords    */
	SUBV((*p)->vel, (*p)->vel, cmv);
    }
   return head;
}

/*
 * STEPSYSTEM: advance N-body system one time-step.
 */
extern int EventCount;

void stepsystem(SecurePointer<tree>* t, int nstep) {
  SecurePointer<bnode>* bt, bt0, q;
  int i;
  SecurePointer<node>* root;

  int barge,cflctdiff,misstemp,diff;
  /*unsigned long t5, t1, t2, t3, t4; */

  /*chatting("Entered stepsystem with t = 0x%x\n",t);*/
  if ((*t)->root != NULL) {
    freetree1((*t)->root);
    (*t)->root = NULL;
  }

  /*chatting("Tree freed\n");*/

  root = maketree(bt, nbody, t, nstep, 0);
  /*chatting("Done maketree\n");*/
  /*BhDebug = 0;*/
  (*t)->root=root;

  computegrav(t, nstep);
  /*chatting("Done cg\n");*/

  vp((*t)->bodiesperproc[0],nstep);
}


void freetree1(SecurePointer<node>* n)
{
  unsigned long t1, t2;
  int foo;

  freetree(n);
}

  
void freetree(SecurePointer<node>* n)
{
  register SecurePointer<node>* r;
  register int i;
  
  /*NOTEST();*/
  if ((n == NULL) || ((*n)->type == BODY))
    return;

  /* Type(n) == CELL */
  for (i=NSUB-1; i >= 0; i--) {
    r = (*((SecurePointer<cnode>*) n))->subp[i];
    if (r != NULL) {
      freetree(r);
    }
  }

  my_free(n);
  RETEST();
}


SecurePointer<node>* cp_free_list = NULL;
SecurePointer<bnode>* bp_free_list = NULL;


/* should never be called with NULL */
void my_free(SecurePointer<node>* n)
{
  if ((*n)->type == BODY) {
    (*((SecurePointer<bnode>*) n))->next = bp_free_list;
    bp_free_list = (SecurePointer<bnode>*) n;
  }
  else /* CELL */ {
    (*((SecurePointer<cnode>*) n))->next = (SecurePointer<cnode>*) cp_free_list;
    cp_free_list = n;
  }
}
    

SecurePointer<bnode>* ubody_alloc(int p)
{ register SecurePointer<bnode>* tmp = new SecurePointer<bnode>(sizeof(SecurePointer<bnode>));

  (*tmp)->type = BODY;
  (*tmp)->proc = p;
  (*tmp)->proc_next = NULL;
  (*tmp)->new_proc = p;
  return tmp;
  
}


SecurePointer<cnode>* cell_alloc(int p)
{ register SecurePointer<cnode>* tmp;
  register int i;

  if (cp_free_list != NULL) {
    tmp = (SecurePointer<cnode>*) cp_free_list;
    cp_free_list = (SecurePointer<node>*) (*((SecurePointer<cnode>*) cp_free_list))->next;
  }
  else 
    {
      tmp = (SecurePointer<cnode>*)malloc(sizeof(cell));
    }
  (*tmp)->type = CELL;
  (*tmp)->proc = p;
  for (i=0; i < NSUB; i++)
    (*tmp)->subp[i] = NULL;

  return tmp;
}


#define MFRAC  3		/* mass cut off at MFRAC of total */
#define DENSITY 56

datapoints uniform_testdata(int proc, int nbodyx, int seedfactor)
{
  datapoints retval;
  real rsc, vsc, r, v, x, y;
  SecurePointer<bnode>* head, *p, *prev;
  register int i;
  long temp, t1;
  long seed = 123 * (long) seedfactor;
  register int k;
  long rsq, rsc1;
  real rad;
  real coeff;

  /*NOTEST();*/
  rsc = 3 * PI / 16;				/* set length scale factor  */
  vsc = sqrt(1 / rsc);			/* and recip. speed scale   */
  CLRV(retval.cmr);					/* init cm pos, vel         */
  CLRV(retval.cmv);
  head = (SecurePointer<bnode>*) ubody_alloc(proc);
  prev = head;

  for (i = 0; i < nbodyx; i++) {	        /* loop over particles      */
    p = ubody_alloc(proc);
						/* alloc space for bodies   */
    if (p == NULL)  			/* check space is available */
      error("testdata: not enough memory\n");	/*   if not, cry            */
    (*prev)->next = p;
    prev = p;
    (*p)->type = BODY;				/*   tag as a body          */
    (*p)->mass = 1 / nbodyx;			/*   set masses equal       */
    seed = my_rand(seed);
    t1 = xrand(0, MFRAC, seed);
    temp =  3*2 - 1;
    r = 1;
    
    coeff = 4; /* exp(log(nbodyx/DENSITY)/3.0); */
    for (k=0; k < NDIM; k++) {
      seed = my_rand(seed);
      r = xrand(0, MFRAC, seed);
      (*p)->pos[k] = coeff*r;
    }

    ADDV(retval.cmr, retval.cmr, (*p)->pos);			/*   add to running sum     */
    do {					/*   select from fn g(x)    */
      seed = my_rand(seed);
      x = xrand(0, 7, seed);   		/*     for x in range 0:1   */
      seed = my_rand(seed);
      y = xrand(0, 1, seed);  		/*     max of g(x) is 0.092 */
    } while (y > x*x * pow(1 - x*x, 3));	/*   using von Neumann tech */
    v = sqrt(2) * x / pow(1 + r*r, 2);	/*   find v in struct units */

    /*   pick scaled velocity   */
    rad = vsc*v;
    
    do {					/* pick point in NDIM-space */
      for (k = 0; k < NDIM; k++)	{	/* loop over dimensions   */
	seed = my_rand(seed);
	(*p)->vel[k] = xrand(-1, 1, seed);	/* pick from unit cube  */
      }
      DOTVP(rsq, (*p)->vel, (*p)->vel);		/*   compute radius squared */
    } while (rsq > 1);                	/* reject if outside sphere */
    rsc1 = rad / sqrt(rsq);		/* compute scaling factor   */
    MULVS((*p)->vel, (*p)->vel, rsc1);		/* rescale to radius given  */
    ADDV(retval.cmv, retval.cmv, (*p)->vel);			/*   add to running sum     */
  }


  (*prev)->next = NULL;                          /*   mark end of the list   */
  retval.list =(*head)->next;                   /*   toss the dummy node    */
  retval.tail = prev;

  RETEST();
  
  return retval;
}
/*
 * GRAV.C: routines to compute gravity. Public routines: hackgrav().
 * Copyright (c) 1991, Joshua E. Barnes, Honolulu, HI.
 * 	    It's free because it's yours.
 */

/********
#define global extern

#include "defs.h"
#include "code.h"
#include "mem-ref.h"
*********/

/*extern int NumNodes;*/

typedef struct {
  SecurePointer<bnode>* pskip;		/* body to skip in force evaluation */
  vector pos0;			/* point at which to evaluate field */
  real phi0;			/* computed potential at pos0       */
  vector acc0;			/* computed acceleration at pos0    */
} hgstruct, *hgsptr;

hgstruct gravsub(SecurePointer<node>* p, hgstruct hg);
hgstruct walksub(SecurePointer<node>* p, real dsq, real tolsq, hgstruct hg, int level);
bool subdivp(SecurePointer<node>* p, real dsq, real tolsq, hgstruct hg);
void grav(real rsize, SecurePointer<node>* rt, SecurePointer<bnode>* q, int nstep, real dthf);
void vp(SecurePointer<bnode>* q, int nstep);
void hackgrav(SecurePointer<bnode>* p, real rsize, SecurePointer<node>* rt);

void computegrav(SecurePointer<tree>* t, int nstep)
{  register int i;
   real rsize;
   real dthf;
   SecurePointer<node>* root;
   SecurePointer<bnode>* blist;

   /* loop over particles   */
   rsize = (*t)->rsize;

   dthf = dtime / 2;

   for (i=NumNodes-1; i>=0; i--) {
     root = (*t)->root;
     blist = (*t)->bodiesperproc[i];
     grav(rsize,root,blist,nstep,dthf);
   }
}


void grav(real rsize, SecurePointer<node>* rt, SecurePointer<bnode>* bodies, int nstep, real dthf)
{
  register SecurePointer<bnode>* p,* q;
  int i=0;


  /* get it to move to the right processor! */
  if (bodies!= NULL) {
    SecurePointer<bnode>* foo = bodies;
  }
  q = bodies;

  NOTEST();

  while (q!=NULL) {
    gravstep(rsize, rt, q, nstep, dthf);
    q=(*q)->proc_next;
    i++;
  }
  /*chatting("computed gravity on %d particles\n",i);*/
  RETEST();

}

void vp(SecurePointer<bnode>* q, int nstep)
{
  real dthf;
  vector acc1, dacc, dvel, vel1, dpos;

  dthf = dtime / 2;				/* set basic half-step      */

  /* move to the correct processor */
  if (q!= NULL) {
    SecurePointer<bnode>* foo = q;
  }

  NOTEST();

  for (; q != NULL; q = (*q)->proc_next)  {
    SETV(acc1, (*q)->new_acc);
    if (nstep > 0) {			/*   past the first step?   */
      SUBV(dacc, acc1, (*q)->acc);   /*     use change in accel  */
      MULVS(dvel, dacc, dthf);		/*     to make 2nd order    */
      /*ADDV(Vel(q), Vel(q), dvel);*/	/*     correction to vel    */
      ADDV(dvel, (*q)->vel, dvel);
      SETV((*q)->vel, dvel);
    }
    { real p0,p1,p2;
    p0=(*q)->pos[0];
    p1=(*q)->pos[1];
    p2=(*q)->pos[2];
    
    
    
    
    
    
#ifdef DEBUG
    chatting("POSITION:vp--%f,%f,%f\n",p0,p1,p2);
#endif
    }
    SETV((*q)->acc, acc1);
    { real p0,p1,p2;
    p0=(*q)->acc[0];
    p1=(*q)->acc[1];
    p2=(*q)->acc[2];
    
    
    
    
    
    
    /*chatting("ACCEL:vp--%f,%f,%f\n",p0,p1,p2);*/
    }

    MULVS(dvel, (*q)->acc, dthf);	        /*   use current accel'n    */
    { real p0,p1,p2;
    p0=(*q)->vel[0];
    p1=(*q)->vel[1];
    p2=(*q)->vel[2];
    
    
    
    
    
    
    /*chatting("VELOCITY:vp--%f,%f,%f\n",p0,p1,p2);*/
    }
    ADDV(vel1, (*q)->vel, dvel);		/*   find vel at midpoint   */
    MULVS(dpos, vel1, dtime);		/*   find pos at endpoint   */
    ADDV(dpos, (*q)->pos, dpos);   	/*   advance position       */
    SETV((*q)->pos,dpos);
    ADDV((*q)->vel, vel1, dvel);		/*   advance velocity       */
    { real p0,p1,p2;
    p0=(*q)->pos[0];
    p1=(*q)->pos[1];
    p2=(*q)->pos[2];
    
    
    
    
    
    
    /*chatting("vp--%f,%f,%f\n",p0,p1,p2);*/
    }
  }

  RETEST();
}

  
/*
 */
void gravstep(real rsize, SecurePointer<node>* rt, SecurePointer<bnode>* p, int nstep, real dthf)
{

  hackgrav(p, rsize, rt);			/*   compute new acc for p  */
}

/*
 * HACKGRAV: evaluate grav field at a given particle.
 */


void hackgrav(SecurePointer<bnode>* p, real rsize, SecurePointer<node>* rt)
{
  hgstruct hg;
  real szsq;

  NOTEST();
  hg.pskip = p;					/* exclude from force calc. */
  SETV(hg.pos0, (*p)->pos);			/* eval force on this point */
  hg.phi0 = 0;				/* init grav. potential and */
  CLRV(hg.acc0);
  szsq = rsize * rsize;
  hg = walksub(rt, szsq, tol*tol, hg, 0);    /* recursively scan tree    */
  (*p)->phi = hg.phi0;				/* stash resulting pot. and */
  /*chatting("hg.acc : %f,%f,%f\n",hg.acc0[0],hg.acc0[1],hg.acc0[2]);*/
  SETV((*p)->new_acc, hg.acc0);			/* acceleration in body p   */
  RETEST();
}

/*
 * GRAVSUB: compute a single body-body or body-cell interaction.
 */

hgstruct gravsub(SecurePointer<node>* p, hgstruct hg)
{
  real drabs, phii, mor3;
  vector ai, quaddr;
  real dr5inv, phiquad, drquaddr;
  vector dr;
  real drsq;


  SUBV(dr, (*p)->pos, hg.pos0);/*<-- 14.6% load penalty */       /*  find seperation   */
  DOTVP(drsq, dr, dr);			/*   and square of distance */

  drsq += eps*eps;                      /* use standard softening   */
  drabs = sqrt((long) drsq);		/* find norm of distance    */
  phii = (*p)->mass / drabs;		/* and contribution to phi  */
  hg.phi0 -= phii;                      /* add to total potential   */
  mor3 = phii / drsq;  			/* form mass / radius qubed */
  MULVS(ai, dr, mor3);			/* and contribution to acc. */
  ADDV(hg.acc0, hg.acc0, ai);           /* add to net acceleration  */

  if((*p)->type == CELL) {                 /* a body-cell interaction? */
#ifdef QUADPOLE				/*   add qpole correction   */
    dr5inv = 1.0/(drsq * drsq * drabs);     /*   form dr ** (-5)        */
    MULMV(quaddr, Quad(p), dr);       /*   form Q * dr            */
    DOTVP(drquaddr, dr, quaddr);            /*   form dr * Q * dr       */
    phiquad = -0.5 * dr5inv * drquaddr;     /*   quad. part of poten.   */
    hg.phi0 = hg.phi0 + phiquad;            /*   increment potential    */
    phiquad = 5.0 * phiquad / drsq;         /*   save for acceleration  */
    MULVS(ai, dr, phiquad);                 /*   components of acc.     */
    SUBV(hg.acc0, hg.acc0, ai);             /*   increment              */
    MULVS(quaddr, quaddr, dr5inv);   
    SUBV(hg.acc0, hg.acc0, quaddr);         /*   acceleration           */
#endif
  }

  return hg;
}

/*
 * HACKWALK: walk the tree opening cells too close to a given point.
 */

/*
 * WALKSUB: recursive routine to do hackwalk operation.
 * p: pointer into body-tree 
 * dsq: size of box squared 
 */



/*
 * SUBDIVP: decide if a node should be opened.
 * Side effects: sets pmem, dr, and drsq.
 * p: body/cell to be tested 
 * dsq: size of cell squared 
 */

 bool subdivp(SecurePointer<node>* p, real dsq, real tolsq, hgstruct hg)
{
  register SecurePointer<node>* local_p;
  vector dr;
  vector pos;
  real drsq;

  local_p = (SecurePointer<node>*)p;
  if ((*local_p)->type == BODY) /*<-- 27% load penalty */                  /* at tip of tree? */
    return false;                           /*   then cant subdivide */

  SUBV(dr, (*local_p)->pos, hg.pos0); /*<-- 13% load penalty */              /* compute displacement  */   
  DOTVP(drsq, dr, dr); /* <-- 8.6% load penalty */                       /* and find dist squared    */


  return (tolsq * drsq < dsq);                /* use geometrical rule     */
}

/*
 * LOAD.C: routines to create body-tree.  Public routines: maketree().
 * Copyright (c) 1991, Joshua E. Barnes, Honolulu, HI.
 * 	    It's free because it's yours.
 */

long ceil(long a){
  return a;
}

bodyptr body_alloc(int p, real p0, real p1, real p2, real v0, real v1, real v2, real a0, real a1, real a2, real mass, bodyptr ob);
SecurePointer<bnode>* ubody_alloc(int p);
SecurePointer<cnode>* cell_alloc(int p);

typedef struct {
  SecurePointer<node>* tp;
  int num;
} dtstruct;

typedef struct {
  SecurePointer<node>* tp;
  int num;
  int proc;
} dt1struct;


SecurePointer<node>* loadtree(SecurePointer<bnode>* p, icstruct xpic, SecurePointer<node>* t, int l, SecurePointer<tree>* tr);
void expandbox(SecurePointer<bnode>* p, SecurePointer<tree>* t, int nsteps, int proc);
icstruct intcoord1(long rp0, long rp1, long rp2,  SecurePointer<tree>* t);
icstruct intcoord(SecurePointer<bnode> * p,  SecurePointer<tree>* t);
int ic_test(SecurePointer<bnode>* p, SecurePointer<tree>* t);
int subindex(SecurePointer<bnode>* p, SecurePointer<tree>* t, int l);
real hackcofm(SecurePointer<node>* q);


int dis2_number(SecurePointer<node>* n, int prev_bodies, int tnperproc);
void dis_number (SecurePointer<node>* n);

/*
 *  MAKETREE: initialize tree structure for hack force calculation.
 */

SecurePointer<node>* maketree(SecurePointer<bnode>* btab, int nb, SecurePointer<tree>* t, int nsteps, int proc)
{  
  register SecurePointer<bnode>* q;
  int tmp;
  SecurePointer<node>* node1;
  icstruct xqic;
  int holder;

  (*t)->root = NULL;
  nbody = nb;


 for (tmp=NumNodes-1; tmp>=0; tmp--) {
  btab = (*t)->bodiesperproc[tmp];

  /*chatting("Entering inner loop \n");*/
  for (q = btab; q != NULL; q=(*q)->proc_next) { 	/* loop over all bodies  */
    if ((*q)->mass != 0) {			/*   only load massive ones */
      expandbox(q, t, nsteps, proc);   /*     expand root to fit   */
      xqic = intcoord(q,t);
      node1=(*t)->root;
      node1 = loadtree(q, xqic, node1, IMAX >> 1, t);
      (*t)->root = node1;
      /*     insert into tree     */
    } /* if Mass... */
  } /* for q = btab... */
 } /* for NumNodes... */

  /*CMMD_node_timer_clear(2);*/
  /*CMMD_node_timer_start(2);*/
  /*chatting("About to hackcofm\n");*/
  hackcofm((*t)->root);				/* find c-of-m coordinates  */
  /*CMMD_node_timer_stop(2);*/
  /*chatting("hackcofm %f\n",CMMD_node_timer_elapsed(2));*/

  return (*t)->root;
}
  

 

/*
 * New EXPANDBOX: enlarge cubical "box", salvaging existing tree structure.
 * p - body to be loaded 
 * t - tree 
 */

void expandbox(SecurePointer<bnode>* p, SecurePointer<tree>* t, int nsteps, int proc)       
{
    icstruct ic;
    int k;
    vector rmid;
    SecurePointer<cnode>*  newt;
    tree tmp;
    real rsize;
    int inbox;

    inbox = ic_test(p, t);
    while (!inbox) {            		/* expand box (rarely)      */
      rsize = (*t)->rsize;
      /*chatting("expanding box 0x%x, size=%f\n",p,rsize);*/
      
      ADDVS(rmid, (*t)->rmin,  rsize/2);    /*   find box midpoint      */
                                            /*   loop over dimensions   */
/***
      chatting("midpoint:%f,%f,%f\n",rmid[0],rmid[1],rmid[2]);
{
      vector pos;
      pos[0]=Pos(p)[0];
      pos[1]=Pos(p)[1];
      pos[2]=Pos(p)[2];
      chatting("position:%f,%f,%f\n",pos[0],pos[1],pos[2]);
}
      chatting("rsize now = %f\n",rsize);
***/
      for (k=0; k < NDIM; k++)
        if ((*p)->pos[k] < rmid[k])            /*     is p left of mid?    */
           {
             real rmin;
             rmin = (*t)->rmin[k];
	          (*t)->rmin[k] = rmin - rsize;      /*       extend to left     */
           }
      /*chatting("rsize now = %f\n",rsize);*/
      (*t)->rsize = 2 * rsize;               /*   long length of box   */


      rsize = (*t)->rsize;
      /*chatting("rsize now = %f\n",rsize);*/
      if ((*t)->root != NULL) {                  /*   repot existing tree?   */
	   register int i;
	   newt = cell_alloc(0);

	   ic = intcoord1(rmid[0], rmid[1], rmid[2], t);
	   /*   locate old root cell   */
	   	                /* xmid                     */
	   k = old_subindex(ic, IMAX >> 1);        /*     find old tree index  */
	   (*newt)->subp[k] = (*t)->root;            /*     graft old on new     */
	   (*t)->root = (SecurePointer<node>*) newt;           /*     plant new tree       */
	   inbox = ic_test(p, t);
      } /* if Root... */
    } /* while !inbox */
}

/*
 * New LOADTREE: descend tree and insert particle.
 * p - body to be loaded 
 * xp - integer coordinates of p
 * t - tree
 * l - current level in tree 
 */

SecurePointer<node>* loadtree(SecurePointer<bnode>* p, icstruct xpic, SecurePointer<node>* t, int l, SecurePointer<tree>* tr)
{
  int si;
  SecurePointer<cnode>* c;
  SecurePointer<node>* rt;

  if (t == NULL)
     {
      return ((SecurePointer<node>*) (p));
     }
  else {
    				/*   dont run out of bits   */
    if ((*t)->type == BODY) {        		/*   reached a "leaf"?      */
      int i,j;
      icstruct pic,tic;

      /*chatting("Collision\n");*/
      /*printtree(t); printtree(p);*/
      i = PID(t);
      c = (SecurePointer<cnode>*) cell_alloc(i);
      si = subindex((SecurePointer<bnode>*) t, tr, l); 
     
      (*c)->subp[si] = (SecurePointer<node>*) t;        	/*     put body in cell     */
      t = (SecurePointer<node>*) c;	        	/*     link cell in tree    */
    }

    si = old_subindex(xpic, l);     /* move down one level      */
    rt = (*(SecurePointer<cnode>*) t)->subp[si];
    (*(SecurePointer<cnode>*) t)->subp[si] = loadtree(p, xpic, rt, l >> 1, tr);
  }
  return (t);
}


/*
 * INTCOORD: compute integerized coordinates.
 * Returns: TRUE unless rp was out of bounds.
 */
/* called from expandbox */
icstruct intcoord1(long rp0, long rp1, long rp2, SecurePointer<tree>* t)
{
    long xsc;
    /*long rmin,rsize;*/
    icstruct ic;

/***
   rmin = t->rmin[0];
   rsize = t->rsize;
    chatting("rp0 %f,rmin %f,rsize %f\n",rp0,rmin,rsize);
***/
    ic.inb = true;					/* use to check bounds      */

    xsc = (rp0 - (*t)->rmin[0]) / (*t)->rsize;    /*   scale to range [0,1)   */
    if (0 <= xsc && xsc < 1)              /*   within unit interval?  */
      ic.xp[0] = IMAX * xsc;           /*     then integerize      */
    else {                                    /*   out of range           */
      /*chatting("xsc0:%f\n",xsc);*/
      ic.inb = false;                         /*     then remember that   */
      }

    xsc = (rp1 - (*t)->rmin[1]) / (*t)->rsize;    /*   scale to range [0,1)   */
    if (0 <= xsc && xsc < 1)              /*   within unit interval?  */
      ic.xp[1] = IMAX * xsc;           /*     then integerize      */
    else {                                    /*   out of range           */
      /*chatting("xsc1:%f\n",xsc);*/
      ic.inb = false;                         /*     then remember that   */
      }


    xsc = (rp2 - (*t)->rmin[2]) / (*t)->rsize;    /*   scale to range [0,1)   */
    if (0 <= xsc && xsc < 1)              /*   within unit interval?  */
      ic.xp[2] = IMAX * xsc;           /*     then integerize      */
    else {                                    /*   out of range           */
      /*chatting("xsc2:%f\n",xsc);*/
      ic.inb = false;                         /*     then remember that   */
      }


    return (ic);
}


/*
 * INTCOORD: compute integerized coordinates.
 * Returns: TRUE unless rp was out of bounds.
 */

icstruct intcoord(SecurePointer<bnode> * p, SecurePointer<tree> * t)
{
    register long xsc;
    icstruct ic;
    register real rsize;
    vector pos;


    ic.inb = true;					/* use to check bounds      */
    rsize = (*t)->rsize;

    pos[0] = (*p)->pos[0];
    pos[1] = (*p)->pos[1];
    pos[2] = (*p)->pos[2];
 
    /*chatting("Intcoord:%f,%f,%f\n",pos[0],pos[1],pos[2]);*/

    xsc = (pos[0] - (*t)->rmin[0]) / rsize;    /*   scale to range [0,1)   */
    if (0 <= xsc && xsc < 1)              /*   within unit interval?  */
      ic.xp[0] = IMAX * xsc;           /*     then integerize      */
    else {                                    /*   out of range           */
      ic.inb = false;                         /*     then remember that   */
      ic.xp[0] = 0;
    }


    xsc = (pos[1] - (*t)->rmin[1]) / rsize;    /*   scale to range [0,1)   */
    if (0 <= xsc && xsc < 1)              /*   within unit interval?  */
      ic.xp[1] = IMAX * xsc;           /*     then integerize      */
    else {                                    /*   out of range           */
      ic.inb = false;                         /*     then remember that   */
      ic.xp[1] = 0;
    }


    xsc = (pos[2] - (*t)->rmin[2]) / rsize;    /*   scale to range [0,1)   */
    if (0 <= xsc && xsc < 1)              /*   within unit interval?  */
      ic.xp[2] = IMAX * xsc;           /*     then integerize      */
    else {                                     /*   out of range           */
      ic.inb = false;                         /*     then remember that   */
      ic.xp[2] = 0;
    }


    /*chatting("Returning %d:%d:%d, ic.inb=%d\n",ic.xp[0],ic.xp[1],ic.xp[2],ic.inb);*/
    return (ic);
}


int ic_test(SecurePointer<bnode>* p,  SecurePointer<tree>* t)
{
    long xsc, rsize;
    int result;
    vector pos;

    result = true;					/* use to check bounds      */

    pos[0] = (*p)->pos[0];
    pos[1] = (*p)->pos[1];
    pos[2] = (*p)->pos[2];
    rsize = (*t)->rsize;

    xsc = (pos[0] - (*t)->rmin[0]) / rsize;    /*   scale to range [0,1)   */
    if (!(0 <= xsc && xsc < 1))         /*   within unit interval?  */
      result = false;                       /*     then remember that   */
    /*if (result==FALSE) chatting("rsize=%f,xsc=%f\n",rsize,xsc);*/

    xsc = (pos[1] - (*t)->rmin[1]) / rsize;    /*   scale to range [0,1)   */
    if (!(0 <= xsc && xsc < 1))         /*   within unit interval?  */
      result = false;                       /*     then remember that   */
    /*if (result==FALSE) chatting("rsize=%f,xsc=%f\n",rsize,xsc);*/

    xsc = (pos[2] - (*t)->rmin[2]) / rsize;    /*   scale to range [0,1)   */
    if (!(0 <= xsc && xsc < 1))         /*   within unit interval?  */
      result = false;                       /*     then remember that   */
    /*if (result==FALSE) chatting("rsize=%f,xsc=%f\n",rsize,xsc);*/

    /*if (result==FALSE)
     { real size;
       vector mid;
       SETV(mid,t->rmin);
       size = t->rsize;
       chatting("rsize =%f\n",size);
       chatting("minimum:%f,%f,%f\n",mid[0],mid[1],mid[2]);
       chatting("position:%f,%f,%f\n",pos[0],pos[1],pos[2]);
     }*/
    return (result);
}




/*
 * SUBINDEX: determine which subcell to select.  Rolled intcoord & subindex together.
 */

int subindex(SecurePointer<bnode>* p, SecurePointer<tree>* t , int l)
{
    register int i, k;
    register real rsize;
    long xsc;
    int xp[NDIM];
    vector pos;

    pos[0] = (*p)->pos[0];
    pos[1] = (*p)->pos[1];
    pos[2] = (*p)->pos[2];

    rsize = (*t)->rsize;

    xsc = (pos[0] - (*t)->rmin[0]) / rsize;     /*   scale to range [0,1)   */
    
    xp[0] = IMAX * xsc;                  /*   then integerize      */

    xsc = (pos[1] - (*t)->rmin[1]) / rsize;     /*   scale to range [0,1)   */
    
    xp[1] = IMAX * xsc;                  /*   then integerize      */

    xsc = (pos[2] - (*t)->rmin[2]) / rsize;     /*   scale to range [0,1)   */
    
    xp[2] = IMAX * xsc;                  /*   then integerize      */


    i = 0;                                      /* sum index in i           */
    for (k = 0; k < NDIM; k++)                  /* check each dimension     */
        if (xp[k] & l)                          /*   if beyond midpoint     */
            i += NSUB >> (k + 1);               /*     skip over subcells   */

    return (i);
}



int old_subindex(icstruct ic, int l)
{
    register int i, k;

    i = 0;                                      /* sum index in i           */
    for (k = 0; k < NDIM; k++)                  /* check each dimension     */
        if (ic.xp[k] & l)                       /*   if beyond midpoint     */
            i += NSUB >> (k + 1);               /*     skip over subcells   */
    return (i);
}


/*
 * HACKCOFM: descend tree finding center-of-mass coordinates.
 */

real hackcofm(SecurePointer<node>* q)
{
    register int i;
    register SecurePointer<node>* r;
    vector tmpv;
    vector tmp_pos;
    register real mq, mr;

    /*chatting("Entered hackcofm, q=0x%x,fp=0x%x,sp=0x%x\n",q,__getfp(),__getsp());*/
    if ((*q)->type == CELL) {                      /* is this a cell?          */
      mq = 0;
      CLRV(tmp_pos);				/*   and c. of m.           */
      for (i=0; i < NSUB; i++) {
	     r = (*(SecurePointer<cnode>*) q)->subp[i];
	     if (r != NULL) {
	       mr = hackcofm(r);
	       mq = mr + mq;
	       MULVS(tmpv, (*r)->pos, mr);   /*       find moment        */
	       ADDV(tmp_pos, tmp_pos, tmpv);     /*       sum tot. moment    */
	     }
      }

      (*q)->mass = mq;
      NOTEST();
      (*q)->pos[0] = tmp_pos[0];
      (*q)->pos[1] = tmp_pos[1];
      (*q)->pos[2] = tmp_pos[2];
      DIVVS((*q)->pos, (*q)->pos, (*q)->mass);         /*   rescale cms position   */
      RETEST();
      /*chatting("leaving hackcofm cell,q=0x%x,fp=0x%x,sp=0x%x\n",*/
        /*q,__getfp(),__getsp());*/
      return mq;
    }
    /*chatting("0x%x::Hackcofm mass = %f, type = %d\n",q,Mass(q),Type(q));*/
    /*chatting("0x%x:position:%f::%f::%f\n",q,Pos(q)[0],Pos(q)[1],Pos(q)[2]);*/
    mq = (*q)->mass;
    /*chatting("leaving hackcofm body\n");*/
    /*chatting("leaving hackcofm body,q=0x%x,fp=0x%x,sp=0x%x\n",*/
        /*q,__getfp(),__getsp());*/
    return mq;
  }



typedef struct {
  int bits;
  int split;
  SecurePointer<cnode>* new_cell; 
  SecurePointer<node>* non_local[NSUB];
} dt3_struct;


void dis_number (SecurePointer<node>* n)
{
  int tnperproc = (int) ceil ( (long) nbody/NumNodes);

  dis2_number(n, -1, tnperproc);
}

int dis2_number(SecurePointer<node>* n, int prev_bodies, int tnperproc)
{

  if (n == NULL) 
    return prev_bodies;

  else if ((*n)->type == BODY) {
    (*n)->new_proc = (prev_bodies+1)/tnperproc;
    return prev_bodies + 1;
  }

  else { /* cell */
    register int i;
    register SecurePointer<node>* r;

    /*NOTEST();*/
    for (i=0; i < NSUB; i++) {
      r = (*(SecurePointer<cnode>*) n)->subp[i];
      prev_bodies = dis2_number(r, prev_bodies, tnperproc);
    }

    RETEST();
    return prev_bodies;
  }
  
}    


int dealwithargs(int argc, char *argv[]) {
  int level;

  if (argc > 2) 
    NumNodes = atoi(argv[2]);
  else 
    NumNodes = 4;

  if (argc > 1)
    nbody = atoi(argv[1]);
  else
    nbody = 32;

  return level;
}