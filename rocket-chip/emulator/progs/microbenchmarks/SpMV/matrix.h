#include <stdio.h>
#include <stdlib.h>
#include <time.h>  
#include <math.h>
#define true 0
#define false 1
#define CACHE_LINE_SIZE 64
#include <stdint.h>

#ifndef GRANULARITY
#define GRANULARITY 9
#endif


struct csr{

	int *row_ptr;
	int *col_ptr;
	int *val;
	int size;
};



struct csr read_csr(char *path)
{
	printf("Read matrix %s\n",path);
	FILE *fd;
	fd = fopen(path,"r");

	int rows, columns, nnz;

	fscanf(fd,"%d",&rows);
	fscanf(fd,"%d",&nnz);
	printf("Rows = %d Non-zero = %d \n",rows,nnz);
	struct csr csr_out;
	int total_nnz = 0 ;
	srand(time(NULL));
	csr_out.row_ptr = (int *) malloc((rows+1)*sizeof(int));
	csr_out.col_ptr = (int *) malloc(nnz*sizeof(int));
	csr_out.val = (int*) malloc(nnz*sizeof(int));
	csr_out.size = rows;

	int row,col,value;
	for(int w = 0 ; w < rows + 1; w++)
	{
		fscanf(fd,"%d",&row);
		csr_out.row_ptr[w] = row;
	}
	for(int w= 0 ; w < nnz; w++)
	{	
		fscanf(fd,"%d",&col);	
		csr_out.col_ptr[w] = col;
	}
	for(int w= 0 ; w < nnz; w++)
	{
		fscanf(fd,"%f",&value);	
		csr_out.val[w] = value;
	}


	return csr_out ;


}

