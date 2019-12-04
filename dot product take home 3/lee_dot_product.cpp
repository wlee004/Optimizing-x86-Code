#include<stdio.h>
#include<algorithm>
#include<cmath>
#include<time.h>
#include "dot_product_vectorization.h"
#include "dot_product_no_vectorization.h"
using namespace std;


const int arr_size = 16;
static int arr1[arr_size];
static int arr2[arr_size];

int main(){

	int dot_product = 0;
	for (int i = 0; i < arr_size; i++){
		arr1[i] = 1;
		arr2[i] = 0;
	}
// start timer
	clock_t time;
	time = clock();

	dot_product = dot_product_no_vectorization(arr1,arr2,arr_size);
	//dot_product = dot_product_vectorization(&arr1[0],&arr2[0],arr_size);

// end timer
	time = clock() - time;
	double runTime = ((double)time) / CLOCKS_PER_SEC;
	runTime = runTime * pow(10,9);
//outputs
	printf("Array Size: %d",arr_size);
	printf("\nTime: %f nanoseconds\n", runTime);
	return 0;
}
