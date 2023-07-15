# exploration-of-paralleism-1
Exploration of parallelism (cyclic vs block partitioning) - making an N-body solver parallel

This is an exploration of parallelism, using Foster's PCAM method to parallelise an N-body solver. The provided report goes into greater depth as to what the
N-body solver is and does.

4 different N-body solvers are provided, each parallelised in a slightly different way (all using the OpenMP API):

    Basic Solver:

        1. omp_nbody_basic.c - basic n-body solver, parallelised using OpenMP, does not use 3rd Newtonian law so calculations are all done seperately.

    Reduced Solver:

        The Reduced n-body solvers, possess a “mirror computation” effect of calculating force using Newton’s law of
        Action & Reaction, where forces for two particles can be calculated by only calculating for one particle and
        equating the signed opposite force to the other particle; hence workload on the threads decreases as the loop proceeds.

        2. reduce_1.c - Default block partitioning for all parallelised loops
        3. reduce_2.c - Cyclic partitioning for only the loop responsible compute_force() 
        4. reduce_3.c - Cyclic partitioning for all loops parallelised with OpenMP

These programs have been augmented to only output runtime, however they are capable for functioning as true n-body solvers for "n" particles in a system.

The report compiles runtime results from all 4 solvers, compares them, and draw conclusions.

To run:

    1. Ensure you have OpenMP set up and the gcc compiler which will work with an OpenMP wrapper script
    2. run the compile_script.sh - this bash script will compile all 4 solvers.

        $bash compile_script.sh
    
    Now either run each program seperately (can edit each one to edit the output, currently the NO_OUTPUT macro is defined, so no calculated forces will be output) OR run the run.sh bash script.

    If running using the run.sh script, all runtime data will be automatically output to a corresponding file in /perfdata
        
        $bash run.sh
