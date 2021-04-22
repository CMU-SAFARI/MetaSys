/* For copyright information, see olden_v1.0/COPYRIGHT */

#include "em3d.h"
int nonlocals=0;
void compute_nodes(nodelist)
register node_t *nodelist;
{
  register int i;
  register node_t *localnode;
  
  for (; nodelist; ) {
    register long cur_value;
    register int from_count ;
    register long *other_value;
    register long coeff;
    register long value;
    /*register long *coeffs;*/
    /*register node_t **from_nodes;*/
    
    localnode = nodelist;
    atom_select(0);
    cur_value = *localnode->value;
    atom_select(0);
    from_count = localnode->from_count-1;
    for (i=0; i < from_count; i+=2) {
    atom_select(0);
      other_value = localnode->from_values[i];
    atom_select(0);
      coeff = localnode->coeffs[i];

      if (other_value){
    atom_select(0);
        value = *other_value;
        
      }
      else
        value = 0;
      
      cur_value -= coeff*value;
    atom_select(0);
      other_value = localnode->from_values[i+1];
    atom_select(0);
      coeff = localnode->coeffs[i];
      
      if (other_value){
    atom_select(0);
       
        value = *other_value;
      }
      else
        value = 0;
      
      cur_value -= coeff*value;
      
      /*chatting("from %d, coeff %f, value %f\n",count,coeff,value);*/
    }

    if (i==from_count)  {
    atom_select(0);
      other_value = localnode->from_values[i];
    atom_select(0);
      coeff = localnode->coeffs[i];
      
      if (other_value){
       
    atom_select(0);
        value = *other_value;

      }
      else
        value = 0;
      
      cur_value -= coeff*value;
    }
    atom_select(0);
    *localnode->value = cur_value;
    atom_select(0);
    nodelist = localnode->next;
  } /* for */
}
