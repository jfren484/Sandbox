#include <algorithm>
#include <iostream>
#include <queue>
#include <stack>
#include <string>
#include <sstream>
#include <vector>

using namespace std;


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


struct point {
	int Row, Col;

	point() : Row(0), Col(0) {}
};

struct grid_data {
	point Location, FromLocation;
	int Value;
	int Steps;

	grid_data() : Location(), FromLocation(), Value(0), Steps(0) {}
};

vector<string> split(const string& s, char delimiter)
{
	vector<string> tokens;
	string token;
	istringstream tokenStream(s);

	while (getline(tokenStream, token, delimiter))
	{
		tokens.push_back(token);
	}

	return tokens;
}

int calculateLongestRun(square<grid_data>* grid) {
	queue<point> todoQueue;

	for (int row = 0; row < grid->ROWS; ++row) {
		for (int col = 0; col < grid->COLS; ++col) {
			todoQueue.push(grid->at(row, col).Location);
		}
	}

	vector<point> directions(4);
	directions[0].Row = -1;
	directions[1].Row = 1;
	directions[2].Col = -1;
	directions[3].Col = 1;

	for (; !todoQueue.empty(); todoQueue.pop()) {
		point coords = todoQueue.front();

		for (int i = 0; i < 4; ++i) {
			point neighborCoords = coords;
			neighborCoords.Row += directions[i].Row;
			neighborCoords.Col += directions[i].Col;

			if (neighborCoords.Row < 0 || neighborCoords.Row >= grid->ROWS || neighborCoords.Col < 0 || neighborCoords.Col >= grid->COLS) {
				continue;
			}

			// Neighbor value must be lower to move there.
			if (grid->at(neighborCoords.Row, neighborCoords.Col).Value >= grid->at(coords.Row, coords.Col).Value) {
				continue;
			}

			int steps = grid->at(coords.Row, coords.Col).Steps + 1;
			if (steps > grid->at(neighborCoords.Row, neighborCoords.Col).Steps) {
				todoQueue.push(neighborCoords);
				grid->at(neighborCoords.Row, neighborCoords.Col).FromLocation = coords;
				grid->at(neighborCoords.Row, neighborCoords.Col).Steps = steps;
			}
		}
	}

	priority_queue<int> steps;
	for (int row = 0; row < grid->ROWS; ++row) {
		for (int col = 0; col < grid->COLS; ++col) {
			steps.push(grid->at(row, col).Steps);
		}
	}

	int longest = steps.top();

	return longest + 1;
}

int main()
{
	string line, name;
	vector<string> parts;
	int testCases, rows, cols;

	getline(cin, line);
	testCases = stoi(line);

	for (int tc = 0; tc < testCases; ++tc) {
		getline(cin, line);
		parts = split(line, ' ');
		name = parts[0];
		rows = stoi(parts[1]);
		cols = stoi(parts[2]);

		square<grid_data> grid(rows, cols);

		for (int row = 0; row < rows; ++row) {
			getline(cin, line);
			parts = split(line, ' ');

			for (int col = 0; col < cols; ++col) {
				grid.at(row, col).Location.Row = row;
				grid.at(row, col).Location.Col = col;
				grid.at(row, col).Value = stoi(parts[col]);
			}
		}

		int longestRun = calculateLongestRun(&grid);

		cout << name << ": " << longestRun << endl;
	}

	return 0;
}
