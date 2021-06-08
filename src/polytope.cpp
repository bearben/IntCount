#include "polytope.h"
#include <limits>

using namespace std;

void Polytope::dArrInit()
{

	// preparation
	unsigned ActiveRowCount = 0;
	for (unsigned i = 0; i < M; i++) 
		if (RowFlag[i] == true) ActiveRowCount++;
		
	unsigned ActiveColCount = 0;
	for (unsigned i = 0; i < N; i++) 
		if (ColFlag[i] == true) ActiveColCount++;

	// init decision array	
	for (unsigned i = 0; i < M; i++)
	{
		decisionArray[i].isRow = true;
		decisionArray[i].index = i;

		// compute score for a row
		if (RowFlag[i] == true)
		{
			unsigned count = 0;
			for (unsigned j = 0; j < N; j++)
				if (ColFlag[j] == true && matA[i][j] != 0) 
					count++;
			// score = row length / full length
			//assert(count >= 1);
			decisionArray[i].score = 1.5 * (double)(count - 1) / ActiveColCount;
		}
		else
		{
			decisionArray[i].score = 0;
		}
	}
	
	for (unsigned i = 0; i < N; i++)
	{
		decisionArray[M + i].isRow = false;
		decisionArray[M + i].index = i;
		
		if (ColFlag[i] == true)
		{
			unsigned count = 0;
			for (unsigned j = 0; j < N; j++)
				if (ColFlag[j] == true && Graph[i][j] != 0) 
					count++;
			// score = weights of edges about vertex i / N
			decisionArray[M + i].score = (double)count / ActiveColCount;
		}
		else
		{
			decisionArray[M + i].score = 0;
		}
	}
	
	// sort
	for (unsigned i = 0; i < M + N; i++)
		for (unsigned j = i + 1; j < M + N; j++)
			if (decisionArray[i].score < decisionArray[j].score)
			{
				MAPCELL temp = decisionArray[i];
				decisionArray[i] = decisionArray[j];
				decisionArray[j] = temp;
			}
}

void Polytope::Search(unsigned DEPTH_LIMIT, unsigned SIZE_LIMIT)
{

	RefreshGraph();
	dArrInit();
	
	double	bestScore = numeric_limits<double>::max();
	double	bestDepth = DEPTH_LIMIT;
	bool*	bestRowFlag = new bool[M];
	bool*	bestColFlag = new bool[N];
	for (unsigned i = 0; i < M; i++)
		bestRowFlag[i] = true;
	for (unsigned i = 0; i < N; i++)
		bestColFlag[i] = true;

	int decisionLevel = 0;
	unsigned ElimRowCount = 0;		// the count of eliminated rows and cols
	unsigned ElimColCount = 0;
	SetDecFlag(decisionLevel, false);
	if (decisionArray[decisionLevel].isRow)
		ElimRowCount++;
	else
		ElimColCount++;
	
	while (decisionLevel >= 0)
	{

		if (CountCC() > 1)
		{
			// can be decomposed
			double CCScore = 0;
			bool tBool = true;
			for (unsigned i = 1; i < nCC + 1; i++)
				if (CCSize[i] > SIZE_LIMIT)
				{
					// check if all CCSize are less-equal than the LIMIT
					tBool = false;
					break;
				}
			
			if (tBool)
			{				
				// CCScore = depth^2 + (CCSize[1]^2 + ... + CCSize[nCC]^2)
				for (unsigned i = 1; i < nCC + 1; i++)
					CCScore += CCSize[i] * CCSize[i];
				CCScore *= pow(256, ElimRowCount) * pow(16, ElimColCount);
				
				//cout << "bestScore: " << CCScore << "\tElimRowCount: " << ElimRowCount << "\tElimColCount: " << ElimColCount << endl;
				//for (unsigned i = 1; i < N + 1; i++)
					//if (CCSize[i] > 0)
						//cout << CCSize[i] << '\t';
				//cout << endl;
				//PrintCC();
				
				if (CCScore < bestScore)
				{
					// update currently best solution
					bestScore = CCScore;
					bestDepth = ElimRowCount + ElimColCount;
					for (unsigned i = 0; i < M; i++)
						bestRowFlag[i] = RowFlag[i];
					for (unsigned i = 0; i < N; i++)
						bestColFlag[i] = ColFlag[i];
				}
			}
		}
		
		if (ElimRowCount + ElimColCount < bestDepth && 
			decisionLevel < (int)(M + N - 1) && 
			decisionArray[decisionLevel].score > 0)
		{
			//cout << decisionLevel << " dLevel++" << endl;
			// go ahead and Flip
			decisionLevel++;
			//if (GetDecFlag(decisionLevel) == false) cout << decisionLevel << endl;
			assert(GetDecFlag(decisionLevel) == true);
			SetDecFlag(decisionLevel, false);
			if (decisionArray[decisionLevel].isRow)
				ElimRowCount++;
			else
				ElimColCount++;
		}
		else
		{
			//cout << decisionLevel << " dLevel--" << endl;
			// Flip or Backtrack
			while (GetDecFlag(decisionLevel) == true)
				decisionLevel--;
			SetDecFlag(decisionLevel, true);
			if (decisionArray[decisionLevel].isRow)
				ElimRowCount--;
			else
				ElimColCount--;
		}
			
	}
	
	// recover the best solution
	for (unsigned i = 0; i < M; i++)
		SetRowFlag(i, bestRowFlag[i]);
	for (unsigned i = 0; i < N; i++)
		SetColFlag(i, bestColFlag[i]);

	delete []bestRowFlag;
	delete []bestColFlag;

	CountCC();
	//PrintCC();
}


// --------------------------------------------------------------------------
// -- Graph Uils ------------------------------------------------------------
// --------------------------------------------------------------------------
void Polytope::SetRowFlag(unsigned index, bool Flag)
{
	if (index > M) return;

	if (RowFlag[index] == Flag)
		return;
	else 
	{
		RowFlag[index] = Flag;
		if (Flag)
			ActRow(index);
		else
			DeactRow(index);
	}
}

void Polytope::ActRow(unsigned index)
{
	for (unsigned l = 0; l < N; l++)
		if (matA[index][l] != 0 && ColFlag[l] == true)
			for (unsigned r = l + 1; r < N; r++)
				if (matA[index][r] != 0 && ColFlag[l] == true)
				{
					Graph[l][r]++;
					Graph[r][l]++;
				}
}

void Polytope::DeactRow(unsigned index)
{
	for (unsigned l = 0; l < N; l++)
		if (matA[index][l] != 0 && ColFlag[l] == true)
			for (unsigned r = l + 1; r < N; r++)
				if (matA[index][r] != 0 && ColFlag[l] == true)
				{
					Graph[l][r]--;
					Graph[r][l]--;
				}
}

void Polytope::SetColFlag(unsigned index, bool Flag)
{
	if (index > N) return;

	if (ColFlag[index] == Flag) 
		return;
	else
	{
		ColFlag[index] = Flag;	
		if (Flag)
			ActCol(index);
		else
			DeactCol(index);
	}
}

void Polytope::ActCol(unsigned index)
{
	//no need to update graph
}

void Polytope::DeactCol(unsigned index)
{
	//no need to update graph
}

void Polytope::RefreshGraph()
{
	for (unsigned i = 0; i < N; i++)
		for (unsigned j = 0; j < N; j++)
			Graph[i][j] = 0;
	
	for (unsigned i = 0; i < M; i++)
		if (RowFlag[i] == true) 
			ActRow(i);
}


// --------------------------------------------------------------------------
// -- Graph Connected Component (CC) Uils ------------------------------------------------------------
// --------------------------------------------------------------------------
unsigned Polytope::CountCC()
{
	nCC = 0;
	fill(NodeMark, NodeMark + N, 0);
	fill(CCSize, CCSize + N + 1, 0);
		
	for (unsigned i = 0; i < N; i++)
		if (ColFlag[i] == true && NodeMark[i] == 0)
		{
			nCC++;
			DFS(i);
		}
	
	return nCC;
}

void Polytope::DFS(unsigned v)
{
	NodeMark[v] = nCC;
	CCSize[nCC]++;
	
	for (unsigned i = 0; i < N; i++)
		if (ColFlag[i] == true && NodeMark[i] == 0 && Graph[v][i] != 0)
			DFS(i);
}

unsigned Polytope::MergeCC(unsigned SIZE_LIMIT)
{
	// Map & Sort
	unsigned* CCMap = new unsigned[N + 1];
	for (unsigned i = 0; i < N + 1; i++) 
		CCMap[i] = i;
		
	for (unsigned i = 0; i < N + 1; i++)
		for (unsigned j = i + 1; j < N + 1; j++)
			if (CCSize[CCMap[i]] < CCSize[CCMap[j]])
			{
				unsigned tmp = CCMap[i];
				CCMap[i] = CCMap[j];
				CCMap[j] = tmp;
			}
	
	// Merge from largest, down size
	for (unsigned i = 0; i < N + 1; i++)
	{
		unsigned I = CCMap[i];
		if (CCSize[I] == 0) continue;
		for (unsigned j = i + 1; j < N + 1; j++)
		{
			unsigned J = CCMap[j];
			if (CCSize[J] == 0) continue;
			if (CCSize[I] + CCSize[J] <= SIZE_LIMIT)
			{
				// Merge
				for (unsigned k = 0; k < N + 1; k++)
					if (NodeMark[k] == J) NodeMark[k] = I;
				CCSize[I] += CCSize[J];
				CCSize[J] = 0;
			}
		}
	}
	
	// Remove blanks
	nCC = 0;
	for (unsigned i = 0; i < N + 1; i++)
	{
		if (CCSize[i] == 0) continue;

		nCC++;
		assert(i >= nCC);
		if (i > nCC)
		{
			assert(CCSize[nCC] == 0);
			for (unsigned j = 0; j < N; j++)
				if (NodeMark[j] == i) NodeMark[j] = nCC;
			CCSize[nCC] = CCSize[i];
			CCSize[i] = 0;
		}		
	}
	
	return nCC;
	
}



// --------------------------------------------------------------------------
// -- Print Uils ------------------------------------------------------------
// --------------------------------------------------------------------------
void Polytope::PrintConstraints()
{
	cout << "Printing Linear Constraints: " << endl;
	cout << '\t';
	for (unsigned j = 0; j < N; j++)
		if (ColFlag[j] == true)
			cout << "x" << j + 1 << '\t';
		else
			cout << "x" << j + 1 << "(E)\t";
	cout << endl;

	for (unsigned i = 0; i < M; i++)
	{
		if (RowFlag[i] == true)
			cout << 'C' << i + 1 << '\t';
		else
			cout << 'C' << i + 1 << "(E)\t";
		
		for (unsigned j = 0; j < N; j++)
				cout << matA[i][j] << '\t';
		
		if (vecOP[i]) cout << ">= ";
		else cout << "=  ";
		if (vecb[i] == 0)
			cout << '0';
		else
			cout << -vecb[i];
		cout << endl;
	}
	cout << endl;
	
}

void Polytope::PrintDArray()
{
	cout << "Printing Decision Array: " << endl;
	cout.precision(3);
	for (unsigned i = 0; i < M + N; i++)
		if (decisionArray[i].isRow)
			cout << 'C' << decisionArray[i].index + 1 << "\t Score: " << decisionArray[i].score 
				<< "\t Flag: " << GetDecFlag(i) << endl;
		else
			cout << 'x' << decisionArray[i].index + 1 << "\t Score: " << decisionArray[i].score 
				<< "\t Flag: " << GetDecFlag(i) << endl;
	cout << endl;
}

void Polytope::PrintGraph()
{
	cout << "Printing the Linear Constraint Graph: " << endl;
	cout << '\t';
	for (unsigned j = 0; j < N; j++)
		if (ColFlag[j] == true)
			cout << "x" << j + 1 << '\t';
	cout << endl;

	for (unsigned i = 0; i < N; i++)
	{
		if (ColFlag[i] == true)
		{
			cout << 'x' << i + 1 << '\t';		
			for (unsigned j = 0; j < N; j++)
				if (ColFlag[j] == true)
					cout << Graph[i][j] << '\t';
			cout << endl;
		}
	}
	cout << endl;
}


void Polytope::PrintCC()
{
	cout << "Printing Connected Components (" << nCC << "): " << endl;
	for (unsigned i = 0; i < N; i++)
		cout << 'x' << i + 1 << '\t';
	cout << endl;
	
	for (unsigned i = 0; i < N; i++)
		cout << NodeMark[i] << '\t';
	cout << endl << endl;
	
}



