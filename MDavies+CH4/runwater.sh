# Runs laamps simulation with arguments provided
# Plots (Step, Temp) graph using pizza.py

OUT=test
TT0=333
TT1=273
DT=10
RT=1
STRIDE=5
INPUT=in.water
DATA=liq.data

while getopts o:0:1:t:r:s:i:d: option
do
case "${option}"
in
o) OUT=${OPTARG};;
0) TT0=${OPTARG};;
1) TT1=${OPTARG};;
t) DT=${OPTARG};;
r) RT=${OPTARG};;
s) STRIDE=${OPTARG};;
i) INPUT=${OPTARG};;
d) DATA=${OPTARG};;
esac
done 

mkdir $OUT

mpirun -np 2 lmp_mpi	\
	-in $INPUT	\
	-log $OUT/log.run	\
	-var trjFile $OUT/trj.xtc	\
	-var nRand $(($RANDOM + 10))	\
	-var Timestep $DT	\
	-var nsRunTime $RT	\
	-var psStride $STRIDE		\
	-var dataIN $DATA	\
	-var T0 $TT0		\
	-var T1 $TT1		\

mv csvier.py $OUT/csvier.py

cd $OUT

/Users/haykkhachatryan/.pyenv/versions/2.7.8/bin/python -i ~/pizza/src/pizza.py -f csvier.py

mv csvier.py ../csvier.py

