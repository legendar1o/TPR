for points in 10000 50000 100000; do
        rm results/regular-$points results/scaled-$points
	for nodes in 1 4 8 12; do
	  scaled=$[nodes * $points]
		mpiexec -np $nodes ./sek $points >> results/regular-$points
		mpiexec -np $nodes ./row $scaled >> results/scaled-$points
	done
done