#!/bin/bash

#SBATCH --nodes=1   
#SBATCH --tasks-per-node=10
#SBATCH -p phys
#SBATCH -o output.txt
#SBATCH -e error.txt

#. /shared/intel/4219_5/compilers_and_libraries/linux/bin/compilervars.sh intel64
which mpiexec
mpiexec -n 10  ../../perfect/bin/mpnrlmol.mpi >print-10
