#ifndef __DOT_PRODUCT_NO_VECTORIZATION_CPP__
#define __DOT_PRODUCT_NO_VECTORIZATION_CPP__
#include <iostream>

int dot_product_no_vectorization(int arr1[], int arr2[], int arr_size){
	int sum = 0;
#pragma noparallel
#pragma loop(no_vector)
	for(int i = 0; i < arr_size; i++){
		sum = sum + (arr1[i]*arr2[i]);
	}
	return sum;
}

#endif
