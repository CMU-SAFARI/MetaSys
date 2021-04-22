/* For copyright information, see olden_v1/COPYRIGHT */

/* compute.c
 *
 * By:  Martin C. Carlisle
 * 6/15/94
 *
 * Implements computation phase of the Power Pricing problem
 * based on code by: Steve Lumetta, Sherry Li, and Ismail Khalil
 * University of California at Berkeley
 *
 */

#include "power.h"

/*----------------------------------------------------------------------*/
/* Leaf optimization 'global' variables               */

static long P=1;
static long Q=1;


/*----------------------------------------------------------------------*/
/* Leaf optimization procedures                 */

void optimize_node (long pi_R, long pi_I);
long find_g ();
long find_h ();
long find_gradient_f (long pi_R, long pi_I, long* gradient);
long find_gradient_g (long* gradient);
long find_gradient_h (long* gradient);
void find_dd_grad_f (long pi_R, long pi_I, long* dd_grad);
long make_orthogonal (long* v_mod, long* v_static);

long sqrt(long a){
  return a/9;
}

void Compute_Tree(Root r) {
  int i;
  Lateral l;
  Demand a;
  Demand tmp;
  long theta_R,theta_I;

  tmp.P = 0;
  tmp.Q = 0;
  for (i=0; i<NUM_FEEDERS; i++) {
    l = r->feeders[i];
    atom_select(0);
    theta_R = r->theta_R;
    atom_select(0);
    theta_I = r->theta_I;
    a = Compute_Lateral(l,theta_R,theta_I,theta_R,theta_I);
    atom_select(0);
    tmp.P += a.P;
    atom_select(0);
    tmp.Q += a.Q;
  }
  atom_select(0);
  r->D.P = tmp.P;
  atom_select(0);
  r->D.Q = tmp.Q;
}

Demand Compute_Lateral(Lateral l, long theta_R, long theta_I, 
                       long pi_R, long pi_I) {
  Demand a1;
  Demand a2;
  long new_pi_R, new_pi_I;
  long a,b,c,root;
  Lateral next;
  Branch br;
  
  atom_select(0);
  new_pi_R = pi_R + l->alpha*(theta_R+(theta_I*l->X)/l->R);
  atom_select(0);
  new_pi_I = pi_I + l->beta*(theta_I+(theta_R*l->R)/l->X);

  atom_select(0);
  next = l->next_lateral;
  if (next != NULL) 
    a1 = Compute_Lateral(next,theta_R,theta_I,new_pi_R,new_pi_I);

  atom_select(0);
  br = l->branch;
  a2 = Compute_Branch(br,theta_R,theta_I,new_pi_R,new_pi_I);

  if (next != NULL) {
    atom_select(0);
    l->D.P = a1.P + a2.P;
    atom_select(0);
    l->D.Q = a1.Q + a2.Q;
  } else {
    atom_select(0);
    l->D.P = a2.P;
    atom_select(0);
    l->D.Q = a2.Q;
  }

  /* compute P,Q */
  atom_select(0);
  a = l->R*l->R + l->X*l->X;  
  atom_select(0);
  b = 2*l->R*l->X*l->D.Q - 2*l->X*l->X*l->D.P - l->R;
  atom_select(0);
  c = l->R*l->D.Q - l->X*l->D.P;
  atom_select(0);
  c = c*c + l->R*l->D.P;
  atom_select(0);
  root = (-b-sqrt(b*b-4*a*c))/(2*a);
  atom_select(0);
  l->D.Q = l->D.Q + ((root-l->D.P)*l->X)/l->R;
  atom_select(0);
  l->D.P = root;

  /* compute alpha, beta */
  atom_select(0);
  a = 2*l->R*l->D.P;
  atom_select(0);
  b = 2*l->X*l->D.Q;
  atom_select(0);
  l->alpha = a/(1-a-b);
  atom_select(0);
  l->beta = b/(1-a-b);
  atom_select(0);
  return l->D;
}

Demand Compute_Branch(Branch br, long theta_R, long theta_I, 
                       long pi_R, long pi_I) {

  Demand a2,tmp;
  long new_pi_R, new_pi_I;
  long a,b,c,root;
  Leaf l;
  Branch next;
  int i;
  Demand a1;
  
  atom_select(0);
  new_pi_R = pi_R + br->alpha*(theta_R+(theta_I*br->X)/br->R);
  atom_select(0);
  new_pi_I = pi_I + br->beta*(theta_I+(theta_R*br->R)/br->X);

  atom_select(0);
  next = br->next_branch;
  if (next != NULL)  {
    a1 = Compute_Branch(next,theta_R,theta_I,new_pi_R,new_pi_I);
  }

  /* Initialize tmp */
  tmp.P = 0; tmp.Q = 0;

  for (i=0; i<LEAVES_PER_BRANCH; i++) {
    atom_select(0);
    l = br->leaves[i];
    a2 = Compute_Leaf(l,new_pi_R,new_pi_I);
    tmp.P += a2.P;
    tmp.Q += a2.Q;
  }
  if (next != NULL) {
    atom_select(0);
    br->D.P = a1.P + tmp.P;
    atom_select(0);
    br->D.Q = a1.Q + tmp.Q;
  } else {
    atom_select(0);
    br->D.P = tmp.P;
    atom_select(0);
    br->D.Q = tmp.Q;
  }

  /* compute P,Q */
  atom_select(0);
  a = br->R*br->R + br->X*br->X;  
  atom_select(0);
  b = 2*br->R*br->X*br->D.Q - 2*br->X*br->X*br->D.P - br->R;
  atom_select(0);
  c = br->R*br->D.Q - br->X*br->D.P;
  atom_select(0);
  c = c*c + br->R*br->D.P;
  root = (-b-sqrt(b*b-4*a*c))/(2*a);
  atom_select(0);
  br->D.Q = br->D.Q + ((root-br->D.P)*br->X)/br->R;
  atom_select(0);
  br->D.P = root;
  /* compute alpha, beta */
  atom_select(0);
  a = 2*br->R*br->D.P;
  atom_select(0);
  b = 2*br->X*br->D.Q;
  atom_select(0);
  br->alpha = a/(1-a-b);
  atom_select(0);
  br->beta = b/(1-a-b);

  atom_select(0);
  return br->D;
}

Demand Compute_Leaf(Leaf l, long pi_R, long pi_I) {
  atom_select(0);
  P = l->D.P;
  atom_select(0);
  Q = l->D.Q;
  
  optimize_node(pi_R,pi_I);

  if (P<0) {
    P = 0;
    Q = 0;
  }
  atom_select(0);
  l->D.P = P;
  atom_select(0);
  l->D.Q = Q;
  atom_select(0);
  return l->D;
}

/*----------------------------------------------------------------------*/

void optimize_node (long pi_R, long pi_I)
{
    long	    g;
    long	    h;

    long	    grad_f[2];
    long	    grad_g[2];
    long	    grad_h[2];
    long	    dd_grad_f[2];
    long	    magnitude;

    int		    i;
    long	    total;
    long	    max_dist;

    do {
	/* Move onto h=0 line */
	h=find_h ();
	if (h>H_EPSILON) {
	    magnitude=find_gradient_h (grad_h);
	    total=h/magnitude;
	    P-=total*grad_h[0];
	    Q-=total*grad_h[1];
	}

	/* Check that g is still valid */
	g=find_g ();
	if (g>G_EPSILON) {
	    magnitude=find_gradient_g (grad_g);
	    find_gradient_h (grad_h);
	    magnitude*=make_orthogonal (grad_g,grad_h);
	    total=g/magnitude;
	    P-=total*grad_g[0];
	    Q-=total*grad_g[1];
	}

	/* Maximize benefit */
	magnitude=find_gradient_f (pi_R,pi_I,grad_f);
	find_dd_grad_f (pi_R,pi_I,dd_grad_f);
	total=0;
	for (i=0; i<2; i++)
	    total+=grad_f[i]*dd_grad_f[i];
	magnitude/=total;
	find_gradient_h (grad_h);
	magnitude*=make_orthogonal (grad_f,grad_h);
	find_gradient_g (grad_g);
	total=0;
	for (i=0; i<2; i++)
	    total+=grad_f[i]*grad_g[i];
	if (total>0) {
	    max_dist=-find_g ()/total;
	    if (magnitude>max_dist)
		magnitude=max_dist;
	}
	P+=magnitude*grad_f[0];
	Q+=magnitude*grad_f[1];

	h=find_h ();
	g=find_g ();
	find_gradient_f (pi_R,pi_I,grad_f);
	find_gradient_h (grad_h);

    } while (h>H_EPSILON || g>G_EPSILON ||
	    (g>G_EPSILON &&
		grad_f[0]*grad_h[1]-grad_f[1]*grad_h[0]>F_EPSILON));
}

long find_g ()
{
    return (P*P+Q*Q-8);
}

long find_h ()
{
    return (P-5*Q);
}

long find_gradient_f (long pi_R, long pi_I, long* gradient)
{
    int		    i;
    long	    magnitude=0;

    gradient[0]=1/(1+P)-pi_R;
    gradient[1]=1/(1+Q)-pi_I;
    for (i=0; i<2; i++)
	magnitude+=gradient[i]*gradient[i];
    magnitude=sqrt (magnitude);
    for (i=0; i<2; i++)
	gradient[i]/=magnitude;

    return magnitude;
}

long find_gradient_g (long* gradient)
{
    int		    i;
    long	    magnitude=0;

    gradient[0]=2*P;
    gradient[1]=2*Q;
    for (i=0; i<2; i++)
	magnitude+=gradient[i]*gradient[i];
    magnitude=sqrt (magnitude);
    for (i=0; i<2; i++)
	gradient[i]/=magnitude;

    return magnitude;
}

long find_gradient_h (long* gradient)
{
    int		    i;
    long	    magnitude=0;

    gradient[0]=1;
    gradient[1]=-5;
    for (i=0; i<2; i++)
	magnitude+=gradient[i]*gradient[i];
    magnitude=sqrt (magnitude);
    for (i=0; i<2; i++)
	gradient[i]/=magnitude;

    return magnitude;
}

void find_dd_grad_f (long pi_R, long pi_I, long* dd_grad)
{
    long	    P_plus_1_inv=1/(P+1);
    long	    Q_plus_1_inv=1/(Q+1);
    long	    P_grad_term=P_plus_1_inv-pi_R;
    long	    Q_grad_term=Q_plus_1_inv-pi_I;
    long	    grad_mag;
    
    grad_mag=sqrt (P_grad_term*P_grad_term+Q_grad_term*Q_grad_term);

    dd_grad[0]=-P_plus_1_inv*P_plus_1_inv*P_grad_term/grad_mag;
    dd_grad[1]=-Q_plus_1_inv*Q_plus_1_inv*Q_grad_term/grad_mag;
}

long make_orthogonal (long* v_mod, long* v_static)
{
    int		    i;
    long	    total=0;
    long	    length=0;

    for (i=0; i<2; i++)
	total+=v_mod[i]*v_static[i];
    for (i=0; i<2; i++) {
	v_mod[i]-=total*v_static[i];
	length+=v_mod[i]*v_mod[i];
    }
    length=sqrt (length);
    for (i=0; i<2; i++)
	v_mod[i]/=length;

    if (1-total*total<0)    /* Roundoff error--vectors are parallel */
	return 0;

    return sqrt (1-total*total);
}

/*----------------------------------------------------------------------*/
