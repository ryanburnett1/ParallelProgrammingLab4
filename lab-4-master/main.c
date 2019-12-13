#include <stdlib.h>
#include <stdio.h>
#include <omp.h>
#include <time.h>
#include <sys/time.h>
#include <memory.h>

static const long Num_To_Sort = 1000000000;

// Sequential version of your sort
// If you're implementing the PSRS algorithm, you may ignore this section
void sort_s(int *arr) {
    //Bubble Sort
    //Make boolean for if something swapped
    int swap = 1;
    //Keep going if something swapped
    while(swap == 1){
        //set swap to false so that we know when it is true
        swap = 0;
        //go through all numbers to see if one needs to be swapped and swap it if it does need to be
        for(int count = 0; count < Num_To_Sort; count++){
            //check if the numbers need to be swapped
            if(arr[count] > arr[count + 1]){
                swap = 1;
                //create temporary spot to store number in the array that is being swapped and then swap
                int tmp = arr[count];
                arr[count] = arr[count + 1];
                arr[count + 1] = tmp;
            }
        }
    }

}

// Parallel version of your sort
void sort_p(int *arr) {
    //Bubble Sort
    //Make boolean for if something swapped
    int swap = 1;
    //Keep going if something swapped
    while(swap == 1){
        //set swap to false so that we know when it is true
        swap = 0;
        //go through all numbers to see if one needs to be swapped and swap it if it does need to be
        //Parallel splits for loop into chunks evenly for each CPU
#pragma omp parallel for num_threads(omp_get_max_threads()) \
        schedule(static)
        for(int count = 0; count < Num_To_Sort; count++){
            //check if the numbers need to be swapped
            if(arr[count] > arr[count + 1]){
                swap = 1;
                //create temporary spot to store number in the array that is being swapped and then swap
                int tmp = arr[count];
                arr[count] = arr[count + 1];
                arr[count + 1] = tmp;
            }
        }
    }
}

int main() {
    int *arr_s = malloc(sizeof(int) * Num_To_Sort);
    long chunk_size = Num_To_Sort / omp_get_max_threads();
#pragma omp parallel num_threads(omp_get_max_threads())
    {
        int p = omp_get_thread_num();
        unsigned int seed = (unsigned int) time(NULL) + (unsigned int) p;
        long chunk_start = p * chunk_size;
        long chunk_end = chunk_start + chunk_size;
        for (long i = chunk_start; i < chunk_end; i++) {
            arr_s[i] = rand_r(&seed);
        }
    }

    // Copy the array so that the sorting function can operate on it directly.
    // Note that this doubles the memory usage.
    // You may wish to test with slightly smaller arrays if you're running out of memory.
    int *arr_p = malloc(sizeof(int) * Num_To_Sort);
    memcpy(arr_p, arr_s, sizeof(int) * Num_To_Sort);

    struct timeval start, end;
    printf("Timing sequential...\n");
    gettimeofday(&start, NULL);
    sort_s(arr_s);
    gettimeofday(&end, NULL);
    printf("Took %f seconds\n\n", end.tv_sec - start.tv_sec + (double) (end.tv_usec - start.tv_usec) / 1000000);

    free(arr_s);

    printf("Timing parallel...\n");
    gettimeofday(&start, NULL);
    sort_p(arr_p);
    gettimeofday(&end, NULL);
    printf("Took %f seconds\n\n", end.tv_sec - start.tv_sec + (double) (end.tv_usec - start.tv_usec) / 1000000);

    free(arr_p);

    return 0;
}

