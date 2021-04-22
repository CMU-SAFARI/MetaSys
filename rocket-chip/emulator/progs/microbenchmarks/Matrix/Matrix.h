#ifndef MATRIX_HH
#define MATRIX_HH
template <typename T>
class Matrix
{
  private:
  T* matrixBase;
  int dimensions[2];

  public:
  /** Create a matrix of the given size
   * also randomly fill its content
   * @param rows # of rows the matrix has
   * @param cols # of columns the matrix has
   */
  Matrix(int rows, int cols);
  ~Matrix();

  /** Get a pointer to the heap allocated space
   * @return the pointer to the base address of the matrix
   */
  T* getBasePointer();
  
  /** Multiply two matrices
   * @param m1 Matrix that is going to be multiplied
   * @param m2 Matrix to multiply m1 with
   * @param res Matrix that holds the result of multiplication 
   */
  static void multiply(Matrix<T> &res, Matrix<T> &m1, Matrix<T> &m2);

  /** See if matrices are multipliable(?)
   * @param m1 Matrix that is going to be multiplied
   * @param m2 Matrix to multiply m1 with
   * @param resDimension dimension array that holds the resulting matrices dimensions
   * @returns true if matrices can be multiplied, false otherwise
   */
  static bool canMultiply(int resDimension[2], Matrix<T> &m1, Matrix<T> &m2);

  /** Obtain element at the given index
   * @param row row # of the element
   * @param col col # of the element
   * @returns the element at (row,col)
   */
  T getElement(int row, int col);

  /** Set the element at the given index
   * @param row row # of the element
   * @param col col # of the element
   * @param elem new element at (row,col)
   */
  void setElement(int row, int col, T elem);

  void dump();
};
#endif