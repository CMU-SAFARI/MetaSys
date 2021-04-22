#include <iostream>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>

#include "Matrix.h"

template <typename T>
Matrix<T>::Matrix(int rows, int cols)
{
  int allocSize = rows * cols * sizeof(T);
  matrixBase    = (T*) malloc(allocSize);
  dimensions[0] = rows;
  dimensions[1] = cols;
  for (int i = 0 ; i < rows ; i++)
  {
    for (int j = 0 ; j < cols ; j++)
    {
      matrixBase[i*cols+j] = (T) rand(); 
    }
  }
}

template <typename T>
Matrix<T>::~Matrix()
{
  free(matrixBase);
}

template <typename T>
T*
Matrix<T>::getBasePointer()
{
  return matrixBase;
}

template <typename T>
void
Matrix<T>::multiply(Matrix<T> &res, Matrix<T> &m1, Matrix<T> &m2)
{
  for (int i = 0 ; i < m1.dimensions[0] ; i++)
  {
    for (int j = 0 ; j < m2.dimensions[1] ; j++)
    {
      T newElement = 0;
      for (int k = 0 ; k < m1.dimensions[1] ; k++)
        newElement += m1.getElement(i, k) * m2.getElement(k, j);
      res.setElement(i, j, newElement);
    }
  }
}

template <typename T>
bool
Matrix<T>::canMultiply(int resDimension[2],Matrix<T> &m1, Matrix<T> &m2)
{
  if (m1.dimensions[1] == m2.dimensions[0])
  {
    resDimension[0] = m1.dimensions[0];
    resDimension[1] = m2.dimensions[1]; 
    return true;
  }
  else
    return false;
}

template <typename T>
inline 
T
Matrix<T>::getElement(int row, int col)
{
  return matrixBase[row*dimensions[1] + col];
}

template <typename T>
inline
void
Matrix<T>::setElement(int row, int col, T elem)
{
  matrixBase[row*dimensions[1] + col] = elem;
}

template <typename T>
void
Matrix<T>::dump()
{
  for (int i = 0 ; i < dimensions[0] ; i++)
  {
    for (int j = 0 ; j < dimensions[1] - 1 ; j++)
    {
      std::cout << getElement(i,j) << " ";
    }
    std::cout << getElement(i,dimensions[1] - 1) << std::endl;
  }
}

// Instantiate template candidates
template class Matrix<int>;
template class Matrix<float>;
template class Matrix<double>;
template class Matrix<uint8_t>;
template class Matrix<uint16_t>;
template class Matrix<uint32_t>;
template class Matrix<uint64_t>;