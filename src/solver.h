#include "global.h"
#include "polytope.h"

#ifndef SOLVER_HEADER
#define SOLVER_HEADER

class Solver
{
public:

	std::string barvinokdir;

	unsigned DEPTH_LIMIT;
	unsigned SIZE_LIMIT;

	Polytope *P;
	double totalResult;
	unsigned totalCalls;
	unsigned totalM;
	unsigned totalN;
	
	// Methods
	Solver(std::string fileName);
	~Solver();
	
	int Solve(Polytope *P);
	double CallBarvinok(std::string fileName);
	void GetColBound(Polytope *P, int* lBound, int* uBound);

private:
	Polytope* ReadFile(std::string fileName);
	
};

inline Solver::Solver(std::string fileName) 
{
	barvinokdir = "./bin/barvinok/barvinok_count";

	P = ReadFile(fileName);
	
	DEPTH_LIMIT = (P->N < 10) ? 1 : 4;
	SIZE_LIMIT = ceil((double)P->N / 2);
	if (SIZE_LIMIT > 10) SIZE_LIMIT = 10;
	
	totalResult = 0;
	totalCalls = 0;
	totalM = 0;
	totalN = 0;
}

inline Solver::~Solver()
{
	delete P;
}

#endif
