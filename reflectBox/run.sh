#bash command to run the lammps script and pass variables
#can also do as one line command in the terminal if wish

mpirun -np 2 lmp_mpi	\
	-in ./in.run 					\
	-log test1 					\
	-var trjFile ./test1.xtc 			\
	-var nRand $(($RANDOM + 10)) 			\
	-var Timestep 10 					\
	-var nsRunTime 1 				\
	-var psStride 10 				\
	-var dataIN system.data	\
	-var T0 280					\
	-var T1 280


