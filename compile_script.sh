#!/bin/bash

#Kai
#this script can be used to compile all the n-body solver programs, ignoring an unused variable warning as we are using the NO_OUTPUT macro.

gcc -g -Wall -Wno-unused-but-set-variable -fopenmp -o n_body_basic omp_nbody_basic.c -lm
sleep 1
gcc -g -Wall -Wno-unused-but-set-variable -fopenmp -o reduce_1 reduce_1.c -lm
sleep 1
gcc -g -Wall -Wno-unused-but-set-variable -fopenmp -o reduce_2 reduce_2.c -lm
sleep 1
gcc -g -Wall -Wno-unused-but-set-variable -fopenmp -o reduce_3 reduce_3.c -lm
