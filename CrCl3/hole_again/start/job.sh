#!/bin/bash

#SBATCH --nodes=1   
#SBATCH --tasks-per-node=1 
#SBATCH -p phys
#SBATCH -o output.txt
#SBATCH -e error.txt

#. /shared/intel/4219_5/compilers_and_libraries/linux/bin/compilervars.sh intel64
which mpiexec
rm GOTOLD
rm SICSCI
#mpiexec -n 40  ~/perfect_pack/code2send/bin/mpnrlmol.mpi >print3   
 ~/perfect_pack/code2send/bin/mpnrlmol.ser >print3   

