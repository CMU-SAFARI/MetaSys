/* For copyright information, see olden_v1.0/COPYRIGHT */

#include "em3d.h"
int nonlocals=0;
void compute_nodes(register SecurePointer<node_t> *nodelist)
{
  int i;
  SecurePointer<node_t> *localnode;
  
  for (; nodelist; ) {
    long cur_value;
    int from_count ;
    long *other_value;
    long coeff;
    long value;
    /*register long *coeffs;*/
    /*register node_t **from_nodes;*/
    
    localnode = nodelist;
    cur_value = *(*localnode)->value;
    from_count = (*localnode)->from_count-1;
    SecurePointer<long*> from_values_tmp((*localnode)->from_values, (from_count+1)*sizeof(long*));  
    SecurePointer<long> coeffs_tmp((*localnode)->coeffs, (from_count+1)*sizeof(long));
    for (i=0; i < from_count; i+=2) {
      // Susp below ptr can be null
      SecurePointer<long> other_value_tmp(from_values_tmp[i],sizeof(long)); 
      coeff = coeffs_tmp[i];

      if (!(other_value_tmp==NULL))
        value = *other_value_tmp;
      else
        value = 0;
      
      cur_value -= coeff*value;
      other_value_tmp = SecurePointer<long>(from_values_tmp[i+1],sizeof(long));
      coeff = coeffs_tmp[i];
      
      if (!(other_value_tmp==NULL))
        value = *other_value_tmp;
      else
        value = 0;
      
      cur_value -= coeff*value;
      
      /*chatting("from %d, coeff %f, value %f\n",count,coeff,value);*/
    }

    if (i==from_count)  {
      SecurePointer<long> other_value_tmp(from_values_tmp[i],sizeof(long));
      coeff = coeffs_tmp[i];
      
      if (!(other_value_tmp==NULL))
        value = *other_value_tmp;
      else
        value = 0;
      
      cur_value -= coeff*value;
    }
    *((*localnode)->value) = cur_value;
    nodelist = ((*localnode)->next);
  } /* for */
}
