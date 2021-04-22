#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <assert.h>
typedef struct tree {
    int		val;
    struct tree *left, *right;
} tree_t;

//Checks the bounds
class SecurePointer {
public:

  tree_t * ptr;
  uint64_t base, bound;

  SecurePointer(tree_t * tree, uint64_t base_n, uint64_t bound_n){
    ptr = tree;
    base = base_n;
    bound = bound_n;
  }

  tree_t operator * () {
    printf("%lu\tbase: %lu\tbound: %lu\n",uint64_t(ptr),base,base+(bound*8));
    assert(( uint64_t(ptr) >= base && uint64_t(ptr) <= base+(bound*8) ) && "Bounds check failed");
    return *ptr;
  }
  tree_t operator [] (int i) {
    return ptr[i];
  }
  void operator ++ (int){
    ptr++;
    printf("ptr++: %lu\n", uint64_t(ptr));
  }
  void operator -- (int){
    ptr--;
    printf("ptr--: %lu\n",  uint64_t(ptr));
  }
  tree_t * operator -> (){
    return ptr;
  }

};
//This class doesn't check the bounds
class SecurePointerBase {
public:

  tree_t * ptr;
  uint64_t base, bound;

  SecurePointerBase(tree_t * tree, uint64_t base_n, uint64_t bound_n){
    ptr = tree;
    base = base_n;
    bound = bound_n;
  }

  tree_t operator * () {
    return *ptr;
  }
  tree_t operator [] (int i) {
    return ptr[i];
  }
  void operator ++ (int){
    ptr++;
  }
  void operator -- (int){
    ptr--;
  }
  tree_t * operator -> (){
    return ptr;
  }

};
int main(){
  tree_t * treelist = (tree_t *) malloc(3*sizeof(tree_t));

  tree_t tree1;
  tree1.val=1;
  tree1.left = NULL;
  tree1.right = NULL;

  tree_t tree2;
  tree2.val = 2;
  tree2.right = NULL;
  tree2.left = NULL;

  tree_t tree3;
  tree3.val = 3;
  tree3.right = NULL;
  tree3.left = NULL;

  treelist[0]=tree1;
  treelist[1]=tree2;
  treelist[2]=tree3;

  SecurePointer ptr(treelist,uint64_t(treelist),sizeof(tree_t)*3);
  printf("ptr.ptr: %lu, *ptr: %d, ptr.ptr.val: %d, ptr.base: %lu, ptr.bounds: %lu\n",uint64_t(ptr.ptr), (*ptr).val, ptr.ptr->val, ptr.base, ptr.bound);
  ptr++;
  printf("ptr.ptr: %lu, *ptr: %d, ptr.ptr.val: %d, ptr.base: %lu, ptr.bounds: %lu\n",uint64_t(ptr.ptr), (*ptr).val, ptr.ptr->val, ptr.base, ptr.bound);
  ptr--;
  printf("ptr.ptr: %lu, *ptr: %d, ptr.ptr.val: %d, ptr.base: %lu, ptr.bounds: %lu\n",uint64_t(ptr.ptr), (*ptr).val, ptr.ptr->val, ptr.base, ptr.bound);
  ptr++;
  ptr++;
  printf("ptr.ptr: %lu, *ptr: %d, ptr.ptr.val: %d, ptr.base: %lu, ptr.bounds: %lu\n",uint64_t(ptr.ptr), (*ptr).val, ptr.ptr->val, ptr.base, ptr.bound);
  ptr--;
  ptr--;
  printf("ptr.ptr: %p, ptr[0].val: %d\n",ptr.ptr,ptr[0].val);
  ptr--;
  printf("ptr.ptr: %p, ptr[1].val: %d\n",ptr.ptr,ptr[1].val);
  printf("ptr.ptr: %p, ptr[2].val: %d\n",ptr.ptr,ptr[2].val);
  printf("(*ptr).val: %d\n",(*ptr).val);


}
