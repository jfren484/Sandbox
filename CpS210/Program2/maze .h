#ifndef SQUARE_H
#define SQUARE_H

#include <iostream>
#include <vector>
using namespace std;

struct point {
	int Row, Col;
};

struct maze_data {
public:
	point Location, FromLocation;
	char Value;
	int Steps;

	maze_data() : Location(), FromLocation(), Value(' '), Steps(INT32_MAX) {}
};

class maze {
public:
	int ROWS, COLS;
	point Entrance;

private:
	maze_data* cells;

public:
	maze(vector<string> lines) : ROWS((int)lines.size()), COLS(0), Entrance(), cells(new maze_data[0]) {
		Entrance.Row = -1;
		Entrance.Col = -1;
		for (int i = 0; i < ROWS; ++i) {
			if (lines[i].size() > (unsigned int)COLS) {
				COLS = (int)lines[i].size();
			}
		}

		cells = new maze_data[(long long)ROWS * COLS];

		for (int r = 0; r < ROWS; ++r) {
			string line = lines[r];
			for (int c = 0; c < COLS; ++c) {
				at(r, c).Location.Row = r;
				at(r, c).Location.Col = c;

				if ((unsigned int)c < line.size()) {
					at(r, c).Value = line[c];
				}

				if (at(r, c).Value == 'E') {
					Entrance = at(r, c).Location;
					at(r, c).Steps = 0;
				}
			}
		}
	}
	~maze() { delete[] cells; }

	maze_data& at(int row, int col) {
		return cells[COLS * row + col];
	}

	//const maze_data& at(int row, int col) const {
	//	return cells[COLS * row + col];
	//}

	std::ostream& print(std::ostream& os) {
		for (int row = 0; row < ROWS; ++row) {
			for (int col = 0; col < COLS; ++col) {
				os << at(row, col).Value;
			}
			os << std::endl;
		}

		return os;
	}
}; // end of class maze

#endif