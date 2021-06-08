#include "solver.h"
#include <glpk.h>
#include <fstream>
#include <sstream>

using namespace std;

int Solver::Solve(Polytope *P)
{

	cout << "START SEARCHING FOR ROWS AND COLUMNS ... ";
	P->Search(DEPTH_LIMIT, SIZE_LIMIT);
	cout << "... FINISHED" << endl;

	P->PrintConstraints();
	P->PrintCC();

	unsigned M = P->M;
	unsigned N = P->N;

	unsigned ElimRowCount = 0;
	for (unsigned i = 0; i < M; i++)
		if (P->GetRowFlag(i) == false) 
			ElimRowCount++;

	unsigned ElimColCount = 0;	
	for (unsigned i = 0; i < N; i++)
		if (P->GetColFlag(i) == false) 
			ElimColCount++;

	unsigned* CCColFlag = new unsigned[N];
	unsigned* CCColSize = new unsigned[N + 1];
	unsigned  nCC = 0;
	
	Polytope *Q;
		
	if (ElimRowCount > 0)
	{
		// Has row eliminations
		// Merge CCs
		P->MergeCC(SIZE_LIMIT);
		nCC = P->GetCC(CCColFlag, CCColSize);
		
		// Introduce new vars and create new constraints
		unsigned nNewVar = (nCC - 1) * ElimRowCount;
		Q = new Polytope(M + nNewVar, N + nNewVar);
		
		unsigned newIdx = 0;
		for (unsigned i = 0; i < N; i++)
			Q->SetColFlag(i, P->GetColFlag(i));
			
		for (unsigned i = 0; i < M; i++)
		{
			Q->vecOP[i] = P->vecOP[i];
			Q->vecb[i] = P->vecb[i];
		
			if (P->GetRowFlag(i) == false)
			{
				// Handle the row to be eliminated
				for (unsigned k = 0; k < N; k++)
					if (CCColFlag[k] == nCC || CCColFlag[k] == 0)
						// including cols to be eliminated
						Q->matA[i][k] = P->matA[i][k];
							
				for (unsigned j = 1; j < nCC; j++)
				{
					// for each CC from the 2nd
					// create new row [M + newIdx]
					// and introduce new var [N + newIdx]
					Q->vecOP[M + newIdx] = false;
					Q->vecb[M + newIdx] = 0;
					
					for (unsigned k = 0; k < N; k++)
						if (CCColFlag[k] == j)
							Q->matA[M + newIdx][k] = P->matA[i][k];
					
					// connect row [i] and [M + newIdx] with var [N + newIdx]
					Q->matA[i][N + newIdx] = 1;
					Q->matA[M + newIdx][N + newIdx] = -1;
					Q->SetColFlag(N + newIdx, false);
					ElimColCount++;
					
					newIdx++;
				}
			}
			else
			{
				// copy the row
				for (unsigned j = 0; j < N; j++)
					Q->matA[i][j] = P->matA[i][j];
			}
		}
			
		M = Q->M;
		N = Q->N;
		ElimRowCount = 0;

		// reconfigure the CCs
		delete CCColFlag;
		delete CCColSize;
		CCColFlag = new unsigned[N];
		CCColSize = new unsigned[N + 1];
		Q->RefreshGraph();
		Q->CountCC();
		nCC = Q->GetCC(CCColFlag, CCColSize);
		
	}
	else
	{
		// Only col elims
		Q = P;
		nCC = Q->GetCC(CCColFlag, CCColSize);
	}
	
	if (nCC <= 1)
	{
		cout << "Did not find decompositions with eliminations." << endl;
		cout << "Please call \'barvinok\' tool directly." << endl;
		return -1;
	}
	
	// Get bounds for each var
	int* LBound = new int[N];
	int* UBound = new int[N];
	cout << "START FINDING BOUNDS FOR VARS" << endl;
	GetColBound(Q, LBound, UBound);
	cout << "FIND BOUNDS FOR VARS ... ... FINISHED" << endl;
	
	Q->PrintConstraints();
	Q->PrintCC();
	
	cout << "Printing Domains of Vars:" << endl;
	for (unsigned i = 0; i < N; i++)
	{
		cout << "x" << i + 1;
		if (Q->GetColFlag(i) == true)
			cout << " in [";
		else
			cout << "(E) in [";
		cout << LBound[i] << ", " << UBound[i] << "]" << endl;
	}
	
	// Set CC in rows
	unsigned* CCRowFlag = new unsigned[M]();
	unsigned* CCRowSize = new unsigned[M + 1]();
	for (unsigned i = 0; i < M; i++)
		if (Q->GetRowFlag(i) == true)
			for (unsigned j = 0; j < N; j++)
				if (Q->GetColFlag(j) == true && Q->matA[i][j] != 0)
				{
					unsigned idx = CCColFlag[j];
					CCRowFlag[i] = idx;
					CCRowSize[idx]++;
					break;
				}
	
	unsigned*	ElimCols = new unsigned[ElimColCount];
	int*		ElimColVals = new int[ElimColCount];
	int 		tIdx = 0;
	
	// init
	unsigned counter = 1;
	unsigned total = 1;
	for (unsigned i = 0; i < N; i++)
		if (Q->GetColFlag(i) == false)
		{
			total *= UBound[i] - LBound[i] + 1;
			ElimCols[tIdx] = i;
			ElimColVals[tIdx] = LBound[i];
			tIdx++;
		}
	
	tIdx = ElimColCount - 1;
	totalResult = 0;
	totalCalls = 0;
	
	while (true)
	{
		
		//for (unsigned i = 0; i < ElimColCount; i++)
			//cout << 'x' << ElimCols[i] + 1 << '=' << ElimColVals[i] << '\t';
		//cout << endl;
	
		// call Barvinok
		double Result = 1;
		cout << "Progress: [" << counter++ << "/" << total << "]\t\t";
		for (unsigned i = 0; i < ElimColCount; i++)
			cout << ElimColVals[i] << '\t';
		cout << endl;
		
		// check if UNSAT
		glp_prob *lp;
		lp = glp_create_prob();
	
		glp_add_rows(lp, M);
		unsigned ti = 1;
		for (unsigned i = 0; i < M; i++)
		{
			double b = Q->vecb[i];
			unsigned ei = 0;
			for (unsigned j = 0; j < N; j++)
				if (Q->GetColFlag(j) == false)
					b += Q->matA[i][j] * ElimColVals[ei++];
						
			if (Q->vecOP[i] == true)
				glp_set_row_bnds(lp, ti, GLP_LO, -b, 0);
			else
				glp_set_row_bnds(lp, ti, GLP_FX, -b, -b);
			ti++;
		}
		glp_add_cols(lp, N - ElimColCount);
		ti = 1;
		for (unsigned i = 0; i < N; i++)
			if (Q->GetColFlag(i) == true)
			{
				glp_set_col_bnds(lp, ti, GLP_FR, 0, 0);
				glp_set_col_kind(lp, ti, GLP_IV);
				ti++;
			}
		
		int* iA = new int[M * (N - ElimColCount) + 1];
		int* jA = new int[M * (N - ElimColCount) + 1];
		double* vA = new double[M * (N - ElimColCount) + 1];
		unsigned k = 1;
		unsigned tj = 1;
		ti = 1;
		for (unsigned i = 0; i < M; i++)
		{
			tj = 1;
			for (unsigned j = 0; j < N; j++)
				if (Q->GetColFlag(j) == true)
				{
					iA[k] = ti;
					jA[k] = tj;
					vA[k] = Q->matA[i][j];
					tj++;
					k++;
				}
			ti++;
		}
		
		glp_load_matrix(lp, M * (N - ElimColCount), iA, jA, vA);
		delete []iA;
		delete []jA;
		delete []vA;
	
		glp_smcp lp_parm;
		glp_init_smcp(&lp_parm);
		lp_parm.msg_lev = GLP_MSG_OFF;
	
		glp_iocp mip_parm;
		glp_init_iocp(&mip_parm);
		mip_parm.msg_lev = GLP_MSG_OFF;
			
		glp_set_obj_coef(lp, 1, 1);
		
		glp_set_obj_dir(lp, GLP_MAX);
		if ((glp_simplex(lp, &lp_parm) != 0 ||
			glp_intopt(lp, &mip_parm) != 0 ||
			glp_mip_status(lp) == GLP_NOFEAS) && false)
		{
			Result = 0;
			cout << "ILP Check UNSAT";
			glp_delete_prob(lp);
		}
		else
		{
			glp_delete_prob(lp);
			
			for (unsigned c = 1; c < nCC + 1; c++)
			{
				// print constraints into tmp.in
				string filename = "tmp" + to_string(c) + ".in";
				ofstream tmpOut(filename, ios::out);
				tmpOut << CCRowSize[c] << ' ' << CCColSize[c] + 2 << endl;
				for (unsigned i = 0; i < M; i++)
					if (CCRowFlag[i] == c)
					{
						tmpOut << Q->vecOP[i] << ' ';
					
						double b = Q->vecb[i];
						unsigned ei = 0;
						for (unsigned j = 0; j < N; j++)
							if (CCColFlag[j] == c)
								tmpOut << Q->matA[i][j] << ' ';
							else if (Q->GetColFlag(j) == false)
								b += Q->matA[i][j] * ElimColVals[ei++];
					
						tmpOut << b << endl;
					}
				tmpOut.close();
			
				totalCalls++;
				totalM += CCRowSize[c];
				totalN += CCColSize[c];
			
				double v = CallBarvinok("tmp" + to_string(c) + ".in");
				cout << (c == 1 ? "" : " * ") << v;
				Result *= v;	// v != 0
			}
		}
		
		totalResult += Result;
		cout << " = " << Result << "\t Total: " << totalResult << endl;
		
		while (tIdx >= 0 && ElimColVals[tIdx] >= UBound[ElimCols[tIdx]])
		{
			ElimColVals[tIdx] = LBound[ElimCols[tIdx]];
			tIdx--;
		}
		
		if (tIdx < 0) 
			break;
		else
		{
			ElimColVals[tIdx]++;
			tIdx = ElimColCount - 1;
		}
	
	}
	
	cout << totalResult << endl;
	return 0;
	
}

double Solver::CallBarvinok(string fileName)
{

	string cmd = "./barvinok/barvinok_count < " + fileName;
	if (system(cmd.c_str()) != 0)
	{
		cout << "Error: Unsuccessful call of \'barvinok_count\'" << endl;
		exit(-1);
	}
			
	double v = 0;
	fstream tmpin("tmp.out", ios::in);
	tmpin >> v;
	tmpin.close();
	
	return v;			
				
}

void Solver::GetColBound(Polytope *P, int* lBound, int* uBound)
{

	unsigned M = P->M;
	unsigned N = P->N;

	glp_prob *lp;
	lp = glp_create_prob();
	
	glp_add_rows(lp, M);
	for (unsigned i = 0; i < M; i++)
	{
		if (P->vecOP[i] == true)
			glp_set_row_bnds(lp, i + 1, GLP_LO, -P->vecb[i], 0);
		else
			glp_set_row_bnds(lp, i + 1, GLP_FX, -P->vecb[i], -P->vecb[i]);
	}
	glp_add_cols(lp, N);
	for (unsigned i = 0; i < N; i++)
	{
		glp_set_col_bnds(lp, i + 1, GLP_FR, 0, 0);
		glp_set_col_kind(lp, i + 1, GLP_IV);
	}
		
	int* iA = new int[M * N + 1];
	int* jA = new int[M * N + 1];
	double* vA = new double[M * N + 1];
	unsigned k = 1;
	for (unsigned i = 0; i < M; i++)
		for (unsigned j = 0; j < N; j++)
		{
			iA[k] = i + 1;
			jA[k] = j + 1;
			vA[k] = P->matA[i][j];
			k++;
		}
	
	glp_load_matrix(lp, M * N, iA, jA, vA);
	delete []iA;
	delete []jA;
	delete []vA;
	
	glp_smcp lp_parm;
	glp_init_smcp(&lp_parm);
	lp_parm.msg_lev = GLP_MSG_ERR;
	
	glp_iocp mip_parm;
	glp_init_iocp(&mip_parm);
	mip_parm.msg_lev = GLP_MSG_ERR;
	
	for (unsigned i = 0; i < N; i++)
	{
		for (unsigned j = 0; j < N; j++)
			if (i == j)
				glp_set_obj_coef(lp, i + 1, 1);
			else
				glp_set_obj_coef(lp, j + 1, 0);
		
		cout << "Compute Bounds for x" << i + 1 << " ..." << endl;
		glp_set_obj_dir(lp, GLP_MAX);
		if (glp_simplex(lp, &lp_parm) != 0 || 
			glp_intopt(lp, &mip_parm) != 0)
		{
			cout << "Error: Unexpected ILP Result! (Maybe Unbounded Or UNSAT)" << endl;
			exit(-1);
		}
		cout << glp_mip_obj_val(lp) << '\t' << floor(glp_mip_obj_val(lp)) << '\t' << floor((float)glp_mip_obj_val(lp)) << endl;
		uBound[i] = floor((float)glp_mip_obj_val(lp));

		glp_set_obj_dir(lp, GLP_MIN);
		if (glp_simplex(lp, &lp_parm) != 0 || 
			glp_intopt(lp, &mip_parm) != 0)
		{
			cout << "Error: Unexpected ILP Result! (Maybe Unbounded Or UNSAT)" << endl;
			exit(-1);
		}
		cout << glp_mip_obj_val(lp) << '\t' << ceil(glp_mip_obj_val(lp)) << '\t' << ceil((float)glp_mip_obj_val(lp)) << endl;
		lBound[i] = ceil((float)glp_mip_obj_val(lp));
	}
	glp_delete_prob(lp);
}


Polytope* Solver::ReadFile(string fileName)
{
	string line;

	ifstream fileReader(fileName);
	if (fileReader.is_open())
	{
		vector<double> arr;
	
		while (getline(fileReader, line))
		{
			if (line.find('#') != string::npos)
				line.erase(line.find('#'));
				
			istringstream iss(line);
			
			double num;
			while ((iss >> num))
				arr.push_back(num);
		}
		fileReader.close();
		
		if (arr.size() < 2)
		{
			cout << "Error: Lack file content! Please Check Input File." << endl;
			exit(-1);
		}
			
		unsigned m = arr[0];
		unsigned n = arr[1] - 2;
			
		if (arr.size() != m * (n + 2) + 2)
		{
			cout << "Error: Incorrect number of elements! Please Check Input File" << endl;
			exit(-1);
		}
			
		Polytope *P = new Polytope(m, n);
		
		unsigned index = 2;
		for (unsigned i = 0; i < m; i++) 
		{
			P->vecOP[i] = (int)arr[index];	// 1: <=; 0: =;
			index++;		
		
			for (unsigned j = 0; j < n; j++)
			{
				P->matA[i][j] = arr[index];
				index++;
			}
			
			P->vecb[i] = arr[index];
			index++;
		}
		
		return P;
		
	}
	else
	{
		cout << "Error: " << fileName << " cannot open!" << endl;
		exit(-1);
	}
	
}











