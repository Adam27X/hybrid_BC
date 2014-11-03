hybrid_BC
=========

Hybrid methods for Parallel Betweenness Centrality on the GPU

The only dependency of this code (other than CUDA itself, of course) is Boost. A few small input examples can be found in the graphs directory. Both DIMACS and SNAP graph formats are accepted (assuming unweighted, undirected graphs). Some small examples are in the graphs directory.

Example command line to run and time the algorithm:
$ ./bc -i ./graphs/breast_coexpress.txt

To do the same and compare to sequential execution on the CPU:
$ ./bc -i ./graphs/breast_coexpress.txt -v

To print BC scores to a file:
$ ./bc -i ./graphs/breast_coexpress.txt --printscores=output.txt

For more information on the algorithms used in this repository, see our SC14 paper: http://users.ece.gatech.edu/~amclaughlin7/SC14_Final.pdf

Adam McLaughlin
Adam27X@gatech.edu
