
 #ifndef _AT_H
 #define _AT_H

#include <stddef.h>


typedef int entry;


struct attribute_table{
     entry* entry; //GAT table
};


typedef struct attribute_table att_table;

//gat global_att_table; // global attribute table variable
 void create_insert_entry(att_table* table, int hlp, int index); // create and insert entry to the GAT
 void init_table(); // initialize GAT
 void translate_gat_to_pat(att_table* pat, att_table* gat); 
#endif
