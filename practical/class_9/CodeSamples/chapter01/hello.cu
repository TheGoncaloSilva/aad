#include "../common/common.h"
#include <stdio.h>

/*
 * A simple introduction to programming in CUDA. This program prints "Hello
 * World from GPU! from 10 CUDA threads running on the GPU.
 */

__global__ void helloFromGPU()
{
    printf("Hello World from GPU:(%d,%d,%d)-(%d,%d,%d)!\n", blockIdx.x, blockIdx.y, blockIdx.z, threadIdx.x, threadIdx.y, threadIdx.z);
    // We can see that only one block was used with a linear line of threads only. 
    //  The execution is conducted in order
}

int main(int argc, char **argv)
{

    printf("Hello World from CPU!\n");

    // send data to a computational unit
    // 1, 10 are the launching geometry with just 1 thread block with 10 threads
    //helloFromGPU<<<1, 10>>>();
    dim3 grid, block;
    grid = {2,5,1}; // 10 blocks
    block = {1,4,1};    // 4 threads in each block
    helloFromGPU<<<grid, block>>>();
    CHECK(cudaDeviceReset());
    return 0;
}


