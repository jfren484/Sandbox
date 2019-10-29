#include <algorithm>
#include <iostream>
#include <string>
#include <sstream>
#include <vector>
#include "square.h"

using namespace std;

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

		square<int> grid(rows, cols);

		for (int row = 0; row < rows; ++row) {
			getline(cin, line);
			parts = split(line, ' ');

			for (int col = 0; col < cols; ++col) {
				grid.at(row, col) = stoi(parts[col]);
			}
		}

		cout << "Test case: " << name << " (" << rows << ", " << cols << ")" << endl;
		grid.print(cout);
	}

	cout << line << endl;

	return 0;
}
