#include <iostream>
#include <vector>

using namespace std;

struct point {
	int Row, Col;

	point() : Row(0), Col(0) {}
};


int main()
{
	int size, pos, row, col, dir, len, currPos;

	vector<point> directions(4);
	directions[0].Row = 1;
	directions[1].Col = -1;
	directions[2].Row = -1;
	directions[3].Col = 1;

	while (true) {
		cin >> size >> pos;
		if (size == 0 || pos == 0) { return 0; }

		row = size / 2 + 1;
		col = size / 2 + 1;
		dir = 0;
		len = 1;
		currPos = 1;

		while (currPos < pos) {
			if (len > pos - currPos) { len = pos - currPos; }
			row += directions[dir].Row * len;
			col += directions[dir].Col * len;
			currPos += len;
			dir = (dir + 1) % 4;
			if (dir % 2 == 0) {
				len += 1;
			}
		}

		cout << "Line = " << row << ", " << "column = " << col << "." << endl;
	}
}
