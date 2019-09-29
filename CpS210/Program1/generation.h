#ifndef SQUARE_H
#define SQUARE_H

#include <iostream>

class generation {
public:
	const int N;

private:
	bool* cells;

	const char* cellDisplayValue(int row, int col) {
		return at(row, col) ? "X" : " ";
	}

	void printRowSeperator(std::ostream& os) {
		for (int col = 0; col < N; ++col) {
			os << "+-";
		}
		os << "+" << std::endl;
	}

public:
	generation(int n) : N(n), cells(new bool[n * n]) {	}
	~generation() { delete[] cells; }

	bool& at(int row, int col) {
		return cells[N * row + col];
	}

	int countNeighbors(int row, int col) {
		int minRow = row > 0 ? row - 1 : row;
		int maxRow = row < N - 1 ? row + 1 : row;
		int minCol = col > 0 ? col - 1 : col;
		int maxCol = col < N - 1 ? col + 1 : col;

		int count = 0;

		for (int r = minRow; r <= maxRow; ++r) {
			for (int c = minCol; c <= maxCol; ++c) {
				if ((r != row || c != col) && at(r, c)) {
					++count;
				}
			}
		}

		return count;
	}

	const bool& at(int row, int col) const {
		return cells[N * row + col];
	}

	std::ostream& print(std::ostream& os) {
		for (int row = 0; row < N; ++row) {
			printRowSeperator(os);

			for (int col = 0; col < N; ++col) {
				os << "|" << cellDisplayValue(row, col);
			}
			os << "|" << std::endl;
		}

		printRowSeperator(os);

		return os;
	}

}; // end of class generation

#endif
