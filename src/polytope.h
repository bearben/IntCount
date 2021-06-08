#include "global.h"

#ifndef POLYTOPE_HEADER
#define POLYTOPE_HEADER

struct MAPCELL
{
	bool 		isRow;
	unsigned 	index;
	double 		score;
};

class Polytope{
public:
	// vairables
	unsigned M;
	unsigned N;

	bool*		vecOP;	// true: greater-than-equal; false: equal
	double**	matA;
	double*		vecb;
	
	unsigned**	Graph;

	// Methods
	Polytope(unsigned RowCount, unsigned ColCount);
	~Polytope();
	
	inline bool	GetRowFlag(unsigned index) { return (index > M) ? false : RowFlag[index]; }
	inline bool	GetColFlag(unsigned index) { return (index > N) ? false : ColFlag[index]; }
	inline bool GetDecFlag(unsigned decisionLevel) 
	{
		if (decisionLevel > M + N) return false;
		MAPCELL map = decisionArray[decisionLevel];
		return map.isRow ? GetRowFlag(map.index) : GetColFlag(map.index);
	}
	void		SetRowFlag(unsigned index, bool Flag);
	void		SetColFlag(unsigned index, bool Flag);
	void		SetDecFlag(unsigned decisionLevel, bool Flag)
	{
		if (decisionLevel > M + N) return;
		MAPCELL map = decisionArray[decisionLevel];
		if (map.isRow) SetRowFlag(map.index, Flag);
		else SetColFlag(map.index, Flag);
	}
	
	void 		Search(unsigned DEPTH_LIMIT, unsigned SIZE_LIMIT);
	
	void 		RefreshGraph();
	
	// Compute Connected Component (CC)
	unsigned 	CountCC();
	unsigned	MergeCC(unsigned SIZE_LIMIT);
	unsigned	GetCC(unsigned* new_CCFlag, unsigned* new_CCSize)
	{
		for (unsigned i = 0; i < N; i++) new_CCFlag[i] = NodeMark[i];
		for (unsigned i = 0; i < N + 1; i++) new_CCSize[i] = CCSize[i];
		return nCC;
	}
	
	void 		PrintConstraints();
	void		PrintDArray();
	void 		PrintGraph();
	void 		PrintCC();

private:
	MAPCELL* 	decisionArray;
	void		dArrInit();
	
	bool*		RowFlag;
	bool*		ColFlag;
	void 		ActRow(unsigned index);
	void 		DeactRow(unsigned index);
	void 		ActCol(unsigned index);
	void 		DeactCol(unsigned index);

	unsigned 	nCC;
	unsigned* 	NodeMark;
	unsigned*	CCSize;
	void 		DFS(unsigned v);
	
};

inline Polytope::Polytope(unsigned RowCount, unsigned ColCount)
{

	M = RowCount;
	N = ColCount;
	
	decisionArray = new MAPCELL[M + N]();
	
	vecOP = new bool[M]();
	matA = new double*[M]();
	for (unsigned i = 0; i < M; i++)
		matA[i] = new double[N]();
	vecb = new double[M]();
		
	RowFlag = new bool[M];
	for (unsigned i = 0; i < M; i++)
		RowFlag[i] = true;
		
	ColFlag = new bool[N];
	for (unsigned i = 0; i < N; i++)
		ColFlag[i] = true;

	Graph = new unsigned*[N]();
	for (unsigned i = 0; i < N; i++)
		Graph[i] = new unsigned[N]();
		
	NodeMark = new unsigned[N];
	CCSize = new unsigned[N + 1];

}

inline Polytope::~Polytope()
{
	delete []decisionArray;

	delete []vecOP;
	for (unsigned i = 0; i < M; i++)
		delete []matA[i];
	delete []matA;
	delete []vecb;
	delete []RowFlag;
	delete []ColFlag;
	
	for (unsigned i = 0; i < N; i++)
		delete []Graph[i];
	delete []Graph;

	delete []NodeMark;
	delete []CCSize;
}

#endif
