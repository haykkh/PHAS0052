# takes an argument for the test number
# bash runwater.sh 3
# for test #3
# will create a directory 'watertest3'
# and put all the output files in there

mkdir watertest$1

mpirun -np 2 lmp_mpi	\
	-in in.water	\
	-log watertest$1/watertest$1	\
	-var trjFile watertest$1/watertest$1.xtc	\
	-var nRand $(($RANDOM + 10))	\
	-var Timestep 10	\
	-var nsRunTime 1	\
	-var psStride 5		\
	-var dataIN liq.data	\
	-var T0 333		\
	-var T1 273		\