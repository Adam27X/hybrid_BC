#ifndef SEQUENTIAL
#define SEQUENTIAL

#include <stack>
#include <queue>

#include "parse.h"

std::vector<float> bc_cpu(graph g, std::vector< std::vector<int> > &d_cpu, std::vector< std::vector<unsigned long long> > &sigma_cpu);

#endif
