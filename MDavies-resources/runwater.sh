mpirun -np 2 lmp_mpi	\
	-in ./in.water 					\
	-log watertest2 					\
	-var trjFile ./watertest2.xtc 			\
	-var nRand $(($RANDOM + 10)) 			\
	-var Timestep 10 					\
	-var nsRunTime 1 				\
	-var psStride 5 				\
	-var dataIN liq.data	\
	-var T0 333					\
	-var T1 273


