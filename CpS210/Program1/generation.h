#ifndef SQUARE_H
#define SQUARE_H

#include <iostream>

class generation {
public:
	const int COLS, ROWS;

private:
	bool* cells;

	void printCell(std::ostream& os, int row, int col) {
		os << (at(row, col) ? "X" : " ");
	}

	void printRowSeperator(std::ostream& os) {
		for (int col = 0; col < COLS; ++col) {
			os << "+-";
		}
		os << "+" << std::endl;
	}

public:
	generation(int rows, int cols) : ROWS(rows), COLS(cols), cells(new bool[rows * cols]) {	}
	~generation() { delete[] cells; }

	bool& at(int row, int col) {
		return cells[COLS * row + col];
	}

	int countNeighbors(int row, int col) {
		int startRow = row > 0 ? row - 1 : row;
		int endRow = row < ROWS - 1 ? row + 1 : row;
		int startCol = col > 0 ? col - 1 : col;
		int endCol = col < COLS - 1 ? col + 1 : col;

		int count = 0;

		for (int r = startRow; r <= endRow; ++r) {
			for (int c = startCol; c <= endCol; ++c) {
				if ((r != row || c != col) && at(r, c)) {
					++count;
				}
			}
		}

		return count;
	}

	const bool& at(int row, int col) const {
		return cells[COLS * row + col];
	}

	std::ostream& print(std::ostream& os) {
		for (int row = 0; row < ROWS; ++row) {
			printRowSeperator(os);

			for (int col = 0; col < COLS; ++col) {
				os << "|";
				printCell(os, row, col);
			}
			os << "|" << std::endl;
		}

		printRowSeperator(os);

		return os;
	}

}; // end of class generation

#endif
