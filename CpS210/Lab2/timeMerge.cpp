#include <cstdio>
#include <cstdlib>
#include <vector>
#include "vectorIter.h"
#include "mergesort.h"

void fillWithRandomValues(std::vector<unsigned int> &vals) {
    for (auto &val : vals) { val = rand() % 1000000000; }
}

void printVector(const std::vector<unsigned int> &vals) {
#ifdef _DEBUG
  for (auto val : vals) { printf("%u ", val);}
  puts("");
#endif
}

int main(int argc, const char *argv[]) {
    int cnt,N;
    
    if (argc < 2) { puts("usage: timeMerge vectorLength\nvectorLength > 0"); return 0; }
    N = atoi(argv[1]);
    if (N < 1) { puts("usage: timeMerge vectorLength\nvectorLength > 0"); return 0; }

	std::vector<unsigned int> vals1(N);
    fillWithRandomValues(vals1);
	printVector(vals1);

	VectorIter<unsigned int> valsBegin = VectorIter<unsigned int>(vals1);
	VectorIter<unsigned int> tempStorage = VectorIter<unsigned int>(std::vector<unsigned int>(N));

	Mergesort<unsigned int>::sort(valsBegin, VectorIter<unsigned int>(vals1, N), tempStorage);
	printVector(vals1);

	return 0;
}