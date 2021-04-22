#include <iostream>
#include <stdlib.h>
#include <time.h>

#include "Matrix.h"
#include "HPC.h"
#include "XMemLib.h"

#define HORIZONTAL_ATOM_ID  0
#define VERTICAL_ATOM_ID    1
#ifndef GRANULARITY
#define GRANULARITY 9
#endif

using namespace std;
int main(int argc, char*argv[])
{

  cout << "Provide matrice dimensions (r1,c1,r2,c2)" << endl;

  int m1Rows,m1Cols,m2Rows,m2Cols;

  cin >> m1Rows;
  cin >> m1Cols;
  cin >> m2Rows;
  cin >> m2Cols;

  cout << "Generating matrices (" << m1Rows << "," << m1Cols
    << ") & (" << m2Rows << "," << m2Cols << ")" << endl;

  Matrix<int> m1(m1Rows, m1Cols);
  Matrix<int> m2(m2Rows, m2Cols);

  cout << "Generated matrices" << endl;

  int mulDims [2];

  if(!Matrix<int>::canMultiply(mulDims,m1,m2))
  {
    cout << "Unable to multiply matrices, did you supply correct dimensions?" << endl;
    exit(1);
  }

  // Map atoms to operand matrices

  // Get pointers to addresses where our matrices are located
  int* m1Base = m1.getBasePointer();
  int* m2Base = m2.getBasePointer();

  // We traverse m1 column by column and m2 row by row
  // all the hardwork is done by the atoms themselves.
  // We need to be very careful deciding on the stride
  // width of the VERTICAL_ATOM, if we go over page boundaries
  // we won't perform well.
  int m1MapSize = (m1Rows*m1Cols*sizeof(int))/(1<<GRANULARITY);
  m1MapSize = m1MapSize == 0 ? 1 : m1MapSize;
  int m2MapSize = (m2Rows*m2Cols*sizeof(int))/(1<<GRANULARITY);
  m2MapSize = m2MapSize == 0 ? 1 : m2MapSize;

  #ifndef NOATOM
  Atom a1(m1Base, HORIZONTAL_ATOM_ID, GRANULARITY);
  // a1.map(m1MapSize);
  Atom a2(m2Base, VERTICAL_ATOM_ID, GRANULARITY);
  // a1.map(m2MapSize);
  #endif

  Matrix<int> m3(mulDims[0],mulDims[1]);

  HPC perfMon;

  cout << "Warmup run" << endl;
  Matrix<int>::multiply(m3, m1, m2);

  cout << "TEST BEGIN" << endl;
  perfMon.startMeasurement();
  // Include atom map overhead
  #ifndef NOATOM
  a1.map(m1MapSize);
  a1.map(m2MapSize);
  #endif
  Matrix<int>::multiply(m3, m1, m2);
  perfMon.endMeasurement();
  cout << "TEST FINISH" << endl;
  perfMon.printStats();
  perfMon.printCSV();

  #ifdef EXTRA_DEBUG
  cout << "Dump matrices\nM1" << endl;
  m1.dump();
  cout << "M2" << endl;
  m2.dump();
  cout << "Result" << endl;
  m3.dump();
  #endif
}