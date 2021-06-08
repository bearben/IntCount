#include <fstream>
#include <chrono>
#include "solver.h"

using namespace std;

typedef std::chrono::high_resolution_clock Clock;

int main(int argc, char **argv) 
{	
	if (argc < 2)
	{
		cout << "Usage: ./IntCount <infile>" << endl;
		exit(-1);
	}

	string fileName = argv[1];
  
    auto t1 = Clock::now();

	Solver S(fileName);
	if (S.Solve(S.P) != 0)
	{
		S.totalCalls++;
		S.totalM += S.P->M;
		S.totalN += S.P->N;
		S.totalResult = -1;
		//S.totalResult = S.CallBarvinok(filename);
		cout << S.totalResult << endl;
	}
	
    auto t2 = Clock::now();

	ofstream finalOut("results.txt", ios::app);
	finalOut << fileName << ',';
	finalOut << S.P->M << ',';
	finalOut << S.P->N << ',';
	finalOut << S.totalCalls << ',';
	finalOut << S.totalM << ',';
	finalOut << S.totalN << ',';
	finalOut << S.totalResult << ',';
	finalOut << (double)std::chrono::duration_cast<std::chrono::nanoseconds>(t2 - t1).count() / 1000000000 << endl;
	
}
