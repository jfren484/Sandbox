#include <cstdio>
#include "generation.h"

int N, K;

void fillWithRandomValues(generation &g) {
	for (int row = 0; row < N; ++row) {
		for (int col = 0; col < N; ++col) {
			g.at(row, col) = (rand() % 2 == 1);
		}
	}
}

int main(int argc, const char* argv[]) {
	if (argc > 2) {
		N = atoi(argv[1]);
		K = atoi(argv[2]);
	}

	if (argc < 3 || N < 2 || K < 0) {
		std::cout << "usage: program1 N K\n\tN >= 2: size of matrix\n\tK >= 0: number of generations to run";
		return 0;
	}

	printf("Running %d generations for a matrix of size %dx%d\n", K, N, N);

	int curIndex = 0;
	generation generations[2]{ {N}, {N} };
	fillWithRandomValues(generations[0]);

	for (int k = 0; k < K; ++k, curIndex = 1 - curIndex) {
		generation& curr = generations[curIndex];
		generation& next = generations[1 - curIndex];

		// Print the current state
		curr.print(std::cout);

		// Compute the next generation
		for (int row = 0; row < N; ++row) {
			for (int col = 0; col < N; ++col) {
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
	generations[curIndex].print(std::cout);
}
