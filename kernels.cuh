#ifndef BC_KERNELS
#define BC_KERNELS

#include <vector>
#include <cuda.h>
#include <cstdio>
#include <iostream>

#include "edgelist_to_csr.h"
#include "util.cuh"

__device__ void bitonic_sort(int *values, int N);
__global__ void bc_gpu_opt(float *bc, const int *R, const int *C, const int *F, const int n, const int m, int *d, unsigned long long *sigma, float *delta, int *Q, int *Q2, int *S, int *endpoints, int *next_source, size_t pitch_d, size_t pitch_sigma, size_t pitch_delta, size_t pitch_Q, size_t pitch_Q2, size_t pitch_S, size_t pitch_endpoints, int start, int end, int *jia, int *diameters);
std::vector<float> bc_gpu(graph g, std::vector< std::vector<int> > &d_gpu_v, std::vector< std::vector<unsigned long long> > &sigma_gpu_v, int max_threads_per_block, int number_of_SMs, program_options op);

#endif
