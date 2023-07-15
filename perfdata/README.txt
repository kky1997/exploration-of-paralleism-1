Kai Koo

Exploration of parallelism

Data collection is done using the single run.sh script which runs all the n-body solvers, one by one, with constant <number of threads> <number of particles><number of timesteps>  <size of timestep> <output frequency> & <g>.
Only the number of threads is incresed by the bash script.

The "Wait" command is executed between each execution of n-body solver programs, this is to ensure that each execution is completely independent and sequential, so there is no interference between
executions of the n-body solver programs.

--------------
if you do not have permission to run the scripts, please run "chmod u+x" in linux command line to get access
--------------

The data collected is split into 3 files, one for each of the n-body solvers.

basic.txt (n_body_basic) - contains the results of running the basic n-body solver with 1, 2, and 4 threads

reduced_default_shed.txt (reduce_1) - contains the results of running the reduced n-body solver (default block partitioning) with 1, 2, and 4 threads

reduced_all_cyclic.txt (reduce_2) - contains the results of running the reduced n-body solver (all omp for loops use cyclic partitiong) with 1, 2, and 4 threads 

reduced_forces_cyclic.txt (reduce_3) - contains the results of running the reduced n-body solver (ONLY the omp for loop responsible for compute_force() uses cyclic partitiong) with 1, 2, and 4 threads


Within each file will be:
    1. number of threads run
    2. the runtime in seconds


eg.

1 thread
Elapsed time = 2.204486e+00 seconds
2 thread
Elapsed time = 1.081548e+00 seconds
4 thread
Elapsed time = 7.412443e-01 seconds

to flatten variance in runtime due to users/programs on the system,
the run.sh is run 5 times and the minimum taken.