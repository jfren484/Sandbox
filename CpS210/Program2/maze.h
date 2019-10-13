#ifndef SQUARE_H
#define SQUARE_H

#include <iostream>
#include <vector>
using namespace std;

class maze {
public:
	size_t COLS, ROWS;

private:
	char* cells;

public:
	maze(vector<string> lines) : ROWS(lines.size()), COLS(0), cells(new char[0]) {
		for (int i = 0; i < ROWS; ++i) {
			if (lines[i].size() > COLS) {
				COLS = lines[i].size();
			}
		}

		cells = new char[ROWS * COLS];

		for (int r = 0; r < ROWS; ++r) {
			string line = lines[r];
			for (int c = 0; c < COLS; ++c) {
				at(r, c) = c < line.size()
					? line[c]
					: ' ';
			}
		}
	}
	~maze() { delete[] cells; }

	char& at(int row, int col) {
		return cells[COLS * row + col];
	}

	//const char& at(int row, int col) const {
	//	return cells[COLS * row + col];
	//}

	std::ostream& print(std::ostream& os) {
		for (int row = 0; row < ROWS; ++row) {
			for (int col = 0; col < COLS; ++col) {
				os << at(row, col);
			}
			os << std::endl;
		}

		return os;
	}

}; // end of class maze

#endif
