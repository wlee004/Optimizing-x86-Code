#ifndef __DOT_PRODUCT_VECTORIZATION_CPP__
#define __DOT_PRODUCT_VECTORIZATION_CPP__
#include "dot_product_vectorization.h"
#include <stdio.h>

int dot_product_vectorization(int *arr1, int *arr2, int arr_size){
	int sum = 0;
	for(int i = 0; i < arr_size; i++){
		sum = sum + (*(arr1 + i) * *(arr2 + i));
	}
	return sum;
}

#endif