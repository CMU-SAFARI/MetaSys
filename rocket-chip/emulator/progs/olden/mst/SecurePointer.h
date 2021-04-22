#ifndef SP_HH
#define SP_HH
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <assert.h>

template <typename T>
class SecurePointer
{
  private:
  T* insecurePointer;
  uint64_t base;
  uint64_t bound;

  public:
  static uint64_t sanityCounter;
  SecurePointer(SecurePointer<T> &copy){
    insecurePointer = copy.insecurePointer;
    base = copy.base;
    bound = copy.bound;
  }

  // For heap objects
  SecurePointer(long int size){
    insecurePointer = (T*) malloc(size);
    base = (uint64_t) insecurePointer;
    bound = size;
  }

  // For stack objects
  SecurePointer(T* sobj,long int size){
    insecurePointer = sobj;
    base = (uint64_t) insecurePointer;
    bound = size;
  }

  SecurePointer(){
    insecurePointer = (T*) malloc(sizeof(T));
    base = (uint64_t) insecurePointer;
    bound = sizeof(T);
  }

  T& operator * () {
    //sanityCounter++;
    #ifdef CHECKHW
    atom_select(0);
    #else
    bool gtb = ((uint64_t) insecurePointer) >= base;
    bool ltb = ((uint64_t) insecurePointer) < (base + bound);
    if(!(gtb && ltb)){
      printf("Bounds check failed: ptr: %lu base: %lu base+bound: %lu\n",uint64_t(insecurePointer),base,base+bound);
      exit(1);
    }
    #endif
    return *insecurePointer;
  }

  T operator [] (int i) { 
    //sanityCounter++;
    #ifdef CHECKHW
    atom_select(0);
    #else
    bool gtb = (((uint64_t) insecurePointer) + i) >= base;
    bool ltb = (((uint64_t) insecurePointer) + i) < (base + bound);
    if(!(gtb && ltb)){
      printf("Bounds check failed: ptr: %lu base: %lu base+bound: %lu\n",uint64_t(insecurePointer+i),base,base+bound);
      exit(1);
    }    
    #endif
    return insecurePointer[i];
  }

  void operator ++ (int){
    insecurePointer++;
    printf("ptr++: %lu\n", uint64_t(insecurePointer));
  }

  void operator -- (int){
    insecurePointer--;
    printf("ptr--: %lu\n",  uint64_t(insecurePointer));
  }

  bool operator == (int *i){
    return (void*) insecurePointer == (void*)i;
  }

  bool operator == (SecurePointer &i){
    return this->insecurePointer == i->insecurePointer;
  }

  T* operator -> () const /*__attribute__((optimize("O0")))*/
  {
    //sanityCounter++;
    #ifdef CHECKHW
    atom_select(0);
    #else
    bool gtb = ((uint64_t) insecurePointer) >= base;
    bool ltb = ((uint64_t) insecurePointer) < (base + bound);
    if(!(gtb && ltb)){
      printf("Bounds check failed: ptr: %lu base: %lu base+bound: %lu\n",uint64_t(insecurePointer),base,base+bound);
      exit(1);
    }
    #endif
    return insecurePointer;
  }
  
};


/*
typedef struct tree {
    int		val;
    void *left, *right;
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
  SecurePointer(){
    
  }

  tree_t operator * () {
    printf("%lu\tbase: %lu\tbound: %lu\n",uint64_t(ptr),base,base+(bound));
    assert(( uint64_t(ptr) >= base && uint64_t(ptr) <= base+(bound) ) && "Bounds check failed");
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
*/
#endif