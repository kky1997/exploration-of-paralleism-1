#!/bin/bash

#Kai
#this script will run all the n-body solvers with 1, 2, and 4 threads, redirecting their output to their corresponding data collection file.

#n_body_basic

output_file_basic="perfdata/basic.txt"

echo "1 thread" >> "$output_file_basic"
./n_body_basic 1 400 1000 0.01 100 g >> "$output_file_basic"

wait

echo "2 thread" >> "$output_file_basic"
./n_body_basic 2 400 1000 0.01 100 g >> "$output_file_basic"

wait

echo "4 thread" >> "$output_file_basic"
./n_body_basic 4 400 1000 0.01 100 g >> "$output_file_basic"

#reduce_1

output_file_red_def="perfdata/reduced_default_shed.txt"

echo "1 thread" >> "$output_file_red_def"
./reduce_1 1 400 1000 0.01 100 g >> "$output_file_red_def"

wait

echo "2 thread" >> "$output_file_red_def"
./reduce_1 2 400 1000 0.01 100 g >> "$output_file_red_def"

wait

echo "4 thread" >> "$output_file_red_def"
./reduce_1 4 400 1000 0.01 100 g >> "$output_file_red_def"

#reduce_2

output_file_red_force="perfdata/reduced_forces_cyclic.txt"

echo "1 thread" >> "$output_file_red_force"
./reduce_2 1 400 1000 0.01 100 g >> "$output_file_red_force"

wait

echo "2 thread" >> "$output_file_red_force"
./reduce_2 2 400 1000 0.01 100 g >> "$output_file_red_force"

wait

echo "4 thread" >> "$output_file_red_force"
./reduce_2 4 400 1000 0.01 100 g >> "$output_file_red_force"

#reduce_3

output_file_red_all="perfdata/reduced_all_cyclic.txt"

echo "1 thread" >> "$output_file_red_all"
./reduce_3 1 400 1000 0.01 100 g >> "$output_file_red_all"

wait

echo "2 thread" >> "$output_file_red_all"
./reduce_3 2 400 1000 0.01 100 g >> "$output_file_red_all"

wait

echo "4 thread" >> "$output_file_red_all"
./reduce_3 4 400 1000 0.01 100 g >> "$output_file_red_all"