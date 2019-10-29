#ifndef SQUARE_H
#define SQUARE_H

#include <iostream>

template <typename T>
class square {
public:
	const int COLS, ROWS;

private:
	T* cells;

public:
	square(int rows, int cols) : ROWS(rows), COLS(cols), cells(new T[rows * cols]) {	}
	~square() { delete[] cells; }

	T& at(int row, int col) {
		return cells[COLS * row + col];
	}

	const T& at(int row, int col) const {
		return cells[COLS * row + col];
	}

	std::ostream& print(std::ostream& os) {
		for (int row = 0; row < ROWS; ++row) {
			for (int col = 0; col < COLS; ++col) {
				os << " " << (at(row, col) < 10 ? " " : "") << at(row, col);
			}
			os << std::endl;
		}

		return os;
	}

}; // end of class square

#endif
