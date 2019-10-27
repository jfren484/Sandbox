#include <string>
#include <iostream>
#include <vector>
#include <sstream>
#include "medianHeap.h"

using namespace std;

// Function implementing algorithm to find median so far. 
int getMedian(int e, int& m, Heap& l, Heap& r)
{
	// Are heaps balanced? If yes, sig will be 0 
	int sig = Signum(l.GetCount(), r.GetCount());
	switch (sig)
	{
	case 1: // There are more elements in left (max) heap 

		if (e < m) // current element fits in left (max) heap 
		{
			// Remore top element from left heap and 
			// insert into right heap 
			r.Insert(l.ExtractTop());

			// current element fits in left (max) heap 
			l.Insert(e);
		}
		else
		{
			// current element fits in right (min) heap 
			r.Insert(e);
		}

		// Both heaps are balanced 
		m = Average(l.GetTop(), r.GetTop());

		break;

	case 0: // The left and right heaps contain same number of elements 

		if (e < m) // current element fits in left (max) heap 
		{
			l.Insert(e);
			m = l.GetTop();
		}
		else
		{
			// current element fits in right (min) heap 
			r.Insert(e);
			m = r.GetTop();
		}

		break;

	case -1: // There are more elements in right (min) heap 

		if (e < m) // current element fits in left (max) heap 
		{
			l.Insert(e);
		}
		else
		{
			// Remove top element from right heap and 
			// insert into left heap 
			l.Insert(r.ExtractTop());

			// current element fits in right (min) heap 
			r.Insert(e);
		}

		// Both heaps are balanced 
		m = Average(l.GetTop(), r.GetTop());

		break;
	}

	// No need to return, m already updated 
	return m;
}

int main()
{
	int m = 0, i; 
	Heap* left = new MaxHeap();
	Heap* right = new MinHeap();
	string exp;

	while (getline(cin, exp)) {
		i = stoi(exp);
		m = getMedian(i, m, *left, *right);
		cout << m << endl;
	}

	delete left;
	delete right;

	return 0;
}