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

void radix_sort(std::vector<int> &source, int nPasses, int base) {
	int divisor=1; // using LSB technique
	std::vector<std::vector<int>> bins(base);
	for (int n=0; n < nPasses; ++n, divisor *= base) {
		// copy from source to bins
		for (int v: source) {
			bins[(v/divisor)%base].push_back(v);
		}
		// copy from bins into source
		std::vector<int>::iterator pos=source.begin();
		for (auto &bin:bins) {
			for (int v: bin) { 
				*pos = v; 
				++pos;
			}
			bin.clear();
		}
	}
}

int main() {
	using namespace std::chrono;

	std::default_random_engine generator;
	std::uniform_int_distribution<int> distribution(0, 9);
	int number = distribution(generator);

	std::vector<int> vals = {751,299,664,115,609,756,409,572,254,131,699,737};
	for (int v in vals) { printf("%d ", v); } putchar('\n');

	high_resolution_clock::time_point t1 = high_resolution_clock::now();
	//radix_sort(vals, 3, 10); // sorts numbers up through 10^3 = 1000
	radix_sort(vals, 5, 4); // sorts numbers up through 4^5 = 1024
	high_resolution_clock::time_point t2 = high_resolution_clock::now();

	duration<double> time_span = duration_cast<duration<double>>(t2 - t1);

	for (int v in vals) { printf("%d ", v); } putchar('\n');
	printf("Time elapsed: %f seconds.\n", time_span.count());
	return 0;
}