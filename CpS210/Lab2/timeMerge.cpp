#include <cstdio>
#include <cstdlib>
#include <vector>
#include "mergesort.h"

void fillWithRandomValues(std::vector<unsigned int> &vals) {
    for (auto &val : vals) { val = rand() % 1000000000; }
}

#ifdef DEBUGPRNT
void printVector(const std::vector<unsigned int> &vals) {
  for (auto val : vals) { printf("%u ", val);}
  puts("");
}
#else
	void printVector(const std::vector<unsigned int> &) { ; }
#endif

int main(int argc, const char *argv[]) {
    int cnt,N;
    
    if (argc < 2) { puts("usage: timeMerge vectorLength\nvectorLength > 0"); return 0; }
    N = atoi(argv[1]);
    if (N < 1) { puts("usage: timeMerge vectorLength\nvectorLength > 0"); return 0; }
    std::vector<unsigned int> vals(N);
	std::vector<unsigned int> hold(N);
    fillWithRandomValues(vals);
    printVector(vals);
	Mergesort::sort(vals.begin(), vals.end(), hold.begin(), 
		std::greater<unsigned int>());
    printVector(vals);
    return 0;
}