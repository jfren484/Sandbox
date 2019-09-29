#include <cstdio>
#include "generation.h"

int ROWS, COLS, K;

void fillWithRandomValues(generation &g) {
	for (int row = 0; row < ROWS; ++row) {
		for (int col = 0; col < COLS; ++col) {
			g.at(row, col) = (rand() % 2 == 1);
		}
	}
}

int main(int argc, const char* argv[]) {
	if (argc > 2) {
		ROWS = atoi(argv[1]);
		if (argc > 3) {
			COLS = atoi(argv[2]);
			K = atoi(argv[3]);
		}
		else {
			COLS = ROWS;
			K = atoi(argv[2]);
		}
	}

	if (argc < 3 || ROWS < 2 || COLS < 2 || K < 0) {
		std::cout << "usage: program1 R [C] K\n\tR >= 2: number of rows in matrix\n\tC >= 2: if specified, number of columns in matrix; otherwise, C = R\n\tK >= 0: number of generations to run";
		return 0;
	}

	printf("Running %d generations for a matrix of size %dx%d\n", K, ROWS, COLS);

	int curIndex = 0;
	generation generations[2]{ {ROWS, COLS}, {ROWS, COLS} };
	fillWithRandomValues(generations[0]);

	for (int k = 0; k < K; ++k, curIndex = 1 - curIndex) {
		generation& curr = generations[curIndex];
		generation& next = generations[1 - curIndex];

		// Print the current state
		printf("Generation %d\n", k);
		curr.print(std::cout);

		// Compute the next generation
		for (int row = 0; row < ROWS; ++row) {
			for (int col = 0; col < COLS; ++col) {
				int neighbors = curr.countNeighbors(row, col);

				if (curr.at(row, col)) {
					if (neighbors < 2 || neighbors > 3) {
						// Death!
						next.at(row, col) = false;
					}
					else {
						// Survival
						next.at(row, col) = true;
					}
				}
				else {
					if (neighbors == 3) {
						// Birth!
						next.at(row, col) = true;
					}
					else {
						// No change
						next.at(row, col) = false;
					}
				}
			}
		}
	}

	// Print the current state
	printf("Generation %d\n", K);
	generations[curIndex].print(std::cout);
}
