/* -------------------------------------------------------------------------- *
   Radix sort variations
   Author:
   Modifications:

   This code demonstrates ...

   Questions:
   * What C++ features do you not understand?
   * How might we make this code more general?
   * Could it be made more memory friendly?
 * -------------------------------------------------------------------------- */
#define in :
#include <cstdio>
#include <vector>
#include <chrono>
#include <random>

typedef std::vector<int> intVector;

void radix_sort(intVector& source, int nPasses, int base) {
	int divisor = 1; // using LSB technique
	std::vector<intVector> bins(base);
	for (int n = 0; n < nPasses; ++n, divisor *= base) {
		// copy from source to bins
		for (int v in source) {
			int digit = (v / divisor) % base;
			bins[digit].push_back(v);
		}
		// copy from bins into source
		intVector::iterator pos = source.begin();
		for (auto& bin in bins) {
			for (int v in bin) {
				*pos = v;
				++pos;
			}
			bin.clear();
		}
	}
}

void radix_sort_recursive(intVector& source, int pass, int nPasses, int base, std::vector<intVector> bins, int divisor) {
	for (int v in source) {
		bins[(v / divisor) % base].push_back(v);
	}
	// copy from bins into source
	intVector::iterator pos = source.begin();
	for (auto& bin in bins) {
		for (int v in bin) {
			*pos = v;
			++pos;
		}
		bin.clear();
	}
	if (pass < nPasses) {
		radix_sort_recursive(source, pass + 1, nPasses, base, bins, divisor * base);
	}
}

int main(int argc, const char* argv[]) {
	using namespace std::chrono;

	int numOfValues = argc > 1
		? std::atoi(argv[1])
		: 100;

	bool printValues = argc > 2 && (std::strcmp(argv[2], "DEBUG") == 0);

	std::default_random_engine generator;
	int exponent = 10;
	int base = 10;

	printf("Processing %d values for %d^%d\n", numOfValues, base, exponent);

	std::uniform_int_distribution<int> distribution(0, INT_MAX);
	std::vector<intVector> bins(base);

	intVector vals(numOfValues);
	intVector vals2(numOfValues);
	for (int v = 0; v < numOfValues; v++) {
		int randomized = distribution(generator);
		vals[v] = randomized;
		vals2[v] = randomized;
	}

	if (printValues)
	{
		printf("Values before processing:\n");
		for (int v in vals) { printf(" %10d\n", v); }
	}

	high_resolution_clock::time_point t1 = high_resolution_clock::now();
	radix_sort(vals, exponent, base);

	high_resolution_clock::time_point t2 = high_resolution_clock::now();
	radix_sort_recursive(vals2, 1, exponent, base, bins, 1);

	high_resolution_clock::time_point t3 = high_resolution_clock::now();

	duration<double> time_span_iterative = duration_cast<duration<double>>(t2 - t1);
	duration<double> time_span_recursive = duration_cast<duration<double>>(t3 - t2);

	if (printValues)
	{
		printf("Values after processing (iterative - recursive):\n");
		for (int i = 0; i < numOfValues; ++i) {
			printf(" %10d  %10d\n", vals[i], vals2[i]);
		}
	}

	printf("Time taken iterative: %f \n", time_span_iterative.count());
	printf("Time taken recursive: %f \n", time_span_recursive.count());

	return 0;
}