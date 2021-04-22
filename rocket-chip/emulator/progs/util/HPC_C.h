#ifndef HPCC_HH
#define HPCC_HH
#include <stdint.h>
#include <stdio.h>

void hpcInit();

void hpcStartMeasurement();
void hpcEndMeasurement();
void hpcPrintStats();
void hpcPrintCSV();

static uint8_t cacheThrasher[16*1024];
#define cycle         0xc00
#define instret       0xc02
#define hpmcounter3   0xc03
#define hpmcounter4   0xc04
#define hpmcounter5   0xc05
#define hpmcounter6   0xc06
#define hpmcounter7   0xc07
#define hpmcounter8   0xc08
#define hpmcounter9   0xc09
#define hpmcounter10  0xc0a

//int counterAddresses[10];

//char counterNames[10][64];

#endif