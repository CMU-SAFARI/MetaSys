#ifndef CROSSLAYER_H
#define CROSSLAYER_H

#ifdef __cplusplus
extern "C" {
#endif

#include "atomops.h"
#include <stdint.h>

void atom_init(uint32_t granularity, int dummy_init);

static inline void atom_define(uint8_t atom_id, uint8_t offset, uint32_t property){
  amu_atom_create(property, atom_id, offset);
}

static inline void atom_define_bulk(uint8_t atom_id, uint32_t *properties, uint8_t size){
  amu_atom_createBulk(properties, atom_id, size);
}

static inline void atom_map(void* start, uint32_t length, uint8_t atom_id){
  amu_write_len(length);
  amu_map(atom_id, (unsigned char*) start);
}
static inline void atom_unmap(void* start, uint32_t length, uint8_t atom_id){
  amu_write_len(length);
  amu_unmap(atom_id, (unsigned char*) start);
}

static inline void atom_activate(uint8_t atom_id){
  ast_activate(atom_id);
}

static inline void atom_deactivate(uint8_t atom_id){
  ast_deactivate(atom_id);
}

static inline void atom_select(uint8_t atom_id){
  bc_atom_select(atom_id);
}

#ifdef __cplusplus
}
#endif

#endif