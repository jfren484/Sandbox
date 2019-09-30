#ifndef SQUARE_H
#define SQUARE_H

#include <iostream>

template <typename T>
class square {
public:
	const int N;
private:
	T *cells;

public:
	square(int n, bool zero=true) : 
		N(n), cells(new T[n*(long)n]) 
	{
		if (zero) {
			for (int k=0; k < n*n; cells[k++] = 0) { ; }
		}
	}
	~square() { delete [] cells; }

	T &at(int row, int col) { 
		return cells[N*row+col];
	}
	
	const T& at(int row, int col) const { 
		return cells[N*row+col];
	}
	
	std::ostream &print(std::ostream &os, char sep=' ') {
		for (int row=0; row < N; ++row) {
			os << sep << at(row,0);
			for (int col=1; col < N; ++col) {
				os << sep << at(row,col);
			}
			os << std::endl;
		}
		return os;
	}
	
}; // end of class square

#endif
