#include <iostream>
#include <chrono>
#include <vector>
#include "fastExp.h"

int main(int argc, const char* argv[]) {
	using namespace std::chrono;

	high_resolution_clock::time_point t1, t2;
	duration<double> time_span;
	long long base, ans;
	int pow;

	if (argc < 3) { puts("usage: Lab4 base pow"); return 0; }
	base = atoi(argv[1]);
	pow = atoi(argv[2]);

	t1 = high_resolution_clock::now();
	ans = fastExp1(base, pow);
	t2 = high_resolution_clock::now();
	time_span = duration_cast<duration<double>>(t2 - t1);
	std::cout << "Time taken for fastExp1(" << base << ", " << pow << "), answer (" << ans << "), ";
	printf("%.7f\n", time_span.count());

	t1 = high_resolution_clock::now();
	ans = fastExp2(base, pow);
	t2 = high_resolution_clock::now();
	time_span = duration_cast<duration<double>>(t2 - t1);
	std::cout << "Time taken for fastExp2(" << base << ", " << pow << "), answer (" << ans << "), ";
	printf("%.7f\n", time_span.count());

	t1 = high_resolution_clock::now();
	ans = fastExp3(base, pow);
	t2 = high_resolution_clock::now();
	time_span = duration_cast<duration<double>>(t2 - t1);
	std::cout << "Time taken for fastExp3(" << base << ", " << pow << "), answer (" << ans << "), ";
	printf("%.7f\n", time_span.count());

	t1 = high_resolution_clock::now();
	ans = fastExp4(base, pow);
	t2 = high_resolution_clock::now();
	time_span = duration_cast<duration<double>>(t2 - t1);
	std::cout << "Time taken for fastExp4(" << base << ", " << pow << "), answer (" << ans << "), ";
	printf("%.7f\n", time_span.count());

	std::vector<bool> bits(64);
	for (int n = pow; n > 0; n >>= 1) {
		bits.push_back(n & 1);
	}

	t1 = high_resolution_clock::now();
	ans = fastExp5(base, bits.end(), bits.begin());
	t2 = high_resolution_clock::now();
	time_span = duration_cast<duration<double>>(t2 - t1);
	std::cout << "Time taken for fastExp5(" << base << ", " << pow << "), answer (" << ans << "), ";
	printf("%.7f\n", time_span.count());

	//for (int n = 0; n <= pow; ++n) {
	//	ans = fastExp4(base, n);
	//	std::cout << "fastExp4(" << base << ", " << n << "), answer (" << ans << ")";
	//	ans = fastExp2(base, n);
	//	std::cout << ", correct answer (" << ans << ")";
	//	std::cout << std::endl;
	//}
}
