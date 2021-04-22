/* For copyright information, see olden_v1.0/COPYRIGHT */

#include <stdlib.h>
#include "em3d.h"

#ifdef TORONTO
#define chatting printf
#endif

#ifdef __MINGW32__
//#define srand48(x) srand(x)
//#define lrand48() (rand() << 16 | rand())
//#define drand48() (1.0*rand() / RAND_MAX)
#else
//extern long drand48();
#endif

static int percentcheck=0,numlocal=0;

/* initialize the random number generator for a particular processor */
void init_random(int seed)
{
  srand48(seed);
}

/* return a random number from 0 to range-1 */
int gen_number(int range)
{
  return (int)lrand48() % range;
}

/* return a random number in [-range,range] but not zero */
int gen_signed_number(int range)
{
  int temp;
 
  temp = lrand48() % (2*range);  /* 0..2*range-1 */
  temp =  temp-(range);
  if (temp >= 0) temp++;
  return temp;
}

/* Generate a long from 0.0 to 1.0 */
long gen_uniform_long()
{
  return drand48();
}

int check_percent(int percent)
{
  int retval;
  retval=(drand48() < (long) (percent/100.0));
  percentcheck++;
  if (retval) numlocal++;
  return retval;
}

void printstats()
{
  chatting("percentcheck=%d,numlocal=%d\n",percentcheck,numlocal);
}








