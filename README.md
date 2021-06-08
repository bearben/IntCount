"IntCount" is an integer solution counter for linear constraints, or an 
integer point counter for convex polytopes. It employs new decomposition 
strategies described in our IJCAI paper based on a state-of-the-art coun-
ter "barvinok". 

IntCount relies on barvinok and GLPK. To build barvinok, it requires m4, 
GMP and ntl. The dependencies are in the folder "utils/".

To compile IntCount with barvinok and their dependencies, simply type:
> sudo sh build_utils.sh <br />
> sudo sh build_barvinok.sh <br />
> make static <br />

Note: it may take a few minutes to run two build shell scripts.

And test IntCount:
> ./IntCount test/5_1_5.in <br />
> ./IntCount test/10_1_10.in <br />
> ./IntCount test/15_1_15.in <br />
> ./IntCount test/5_5_3.in <br />
> ./IntCount test/10_10_3.in <br />
> ./IntCount test/15_15_3.in <br />

Note: the runtimes of test cases range from seconds to ten minutes.


experiments/
- Full benchmarks and binaries of IntCount, Barvinok and SMTCount.
- For more details, see "experiments/README"
