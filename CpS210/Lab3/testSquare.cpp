#include "square.h"

bool forward(int n, int row, int col) {
	int r = row * 4 / n;
	int c = col * 4 / n;

	bool r0 = r == 0 || r == 3;
	bool c0 = c == 0 || c == 3;

	return r0 != c0;
}

int main() {
	const int N = 16;

	square<int> aSquare(N);

	if (N % 4 == 0) {
		int incCnt = 1;
		int decCnt = N * N;
		for (int row = 0; row < N; ++row) {
			for (int col = 0; col < N; ++col) {
				int incVal = incCnt++;
				int decVal = decCnt--;

				int val = forward(N, row, col) ? incVal : decVal;

				aSquare.at(row, col) = val;
			}
		}
	}
	else if (N % 2 == 1) {
		// TODO: odd case
	}

	aSquare.print(std::cout);
}
