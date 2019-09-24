#include <cstdio>
#include <cstdlib>
#include <vector>
#include <chrono>
#include "mergesort.h"

void fillWithRandomValues(std::vector<unsigned int> &vals) {
    for (auto &val : vals) { val = rand() % 1000000000; }
}

//#define DEBUGPRNT

#ifdef DEBUGPRNT
void printVector(const std::vector<unsigned int> &vals) {
  for (auto val : vals) { printf("%u ", val);}
  puts("");
}
#else
	void printVector(const std::vector<unsigned int> &) { ; }
#endif

int main(int argc, const char *argv[]) {
	using namespace std::chrono;
	
	int N;
    
    if (argc < 2) { puts("usage: timeMerge vectorLength\nvectorLength > 0"); return 0; }
    N = atoi(argv[1]);
    if (N < 1) { puts("usage: timeMerge vectorLength\nvectorLength > 0"); return 0; }
    std::vector<unsigned int> vals(N);
	std::vector<unsigned int> hold(N);
    fillWithRandomValues(vals);
    printVector(vals);
	
	high_resolution_clock::time_point t1 = high_resolution_clock::now();
	Mergesort::sort(vals.begin(), vals.end(), hold.begin(),
		std::greater<unsigned int>());
	high_resolution_clock::time_point t2 = high_resolution_clock::now();

	printVector(vals);

	duration<double> time_span = duration_cast<duration<double>>(t2 - t1);
	printf("Time taken for %10d values: %f \n", N, time_span.count());

	return 0;
}