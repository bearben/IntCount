#include <fstream>
#include <chrono>
#include "solver.h"
#include "unistd.h"

#define MAX_DIRSTR_SIZE 255

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
  
   	//check path  
   	char current_absolute_path[MAX_DIRSTR_SIZE];
	//obtain absolute path
	int cnt = readlink("/proc/self/exe", current_absolute_path, MAX_DIRSTR_SIZE);
	if (cnt < 0 || cnt >= MAX_DIRSTR_SIZE)
	{
	    cout << "error: Failed to get absolute path." << endl;
	    exit(0);
	}
	for (int i = cnt; i >= 0; --i)
	    if (current_absolute_path[i] == '/'){
	        current_absolute_path[i] = '\0';
	        break;
	    }
	string barvinokdir(current_absolute_path);
  
    auto t1 = Clock::now();

	Solver S(fileName);
	S.barvinokdir = barvinokdir + "/barvinok/barvinok_count";
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
	finalOut.close();
	
	ofstream tmpOut("tmp.out");
	tmpOut << S.totalResult;
	tmpOut.close();
}
