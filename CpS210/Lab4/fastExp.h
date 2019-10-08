#include <stack>
#include <queue>
/*--------------------------------------------------------------------- *
x^91 
= x*(x^90)
= x*(x^45)^2						= (x^1)*(x^45)^2
= x*(x*x^44)^2
= x*(x*(x^22)^2)^2					= (x^1)*(x^2)*((x^22)^2)^2
= x*(x*((x^11)^2)^2)^2
= x*(x*((x*x^10)^2)^2)^2			= (x^1)*(x^2)*(x^8)*((((x^5)^2)^2)^2)^2
= x*(x*((x*(x^5)^2)^2)^2)^2
= x*(x*((x*(x*x^4)^2)^2)^2)^2
= x*(x*((x*(x*(x^2)^2)^2)^2)^2)^2	= (x^1)*(x^2)*(x^8)*(x^16)*(((((x^2)^2)^2)^2)^2)^2

which is also
x^91 
=(x^1)*(x^2)*(x^8)*(x^16)*(x^64)
 *--------------------------------------------------------------------- */
template <typename T>
T fastExp1(T x, unsigned long long n) {
	switch (n) {
	case 0: return T(1);
	case 1: return x;
	case 2: return x*x;
	case 3: return x*x*x;
	}
	// Now n must be at least 4
	T ans = fastExp1(x*x, n>>1);
	if ((n&0x01) == 1) { ans *= x; }
	return ans;
}

template <typename T>
T fastExp2(T x, unsigned long long n) {
	switch (n) {
	case 0: return T(1);
	case 1: return x;
	case 2: return x*x;
	case 3: return x*x*x;
	}
	// Now n must be at least 4
	T ans = fastExp2(x, n>>1);
	ans *= ans;
	if ((n&0x01) == 1) { ans *= x; }
	return ans;
}

// MSB -> LSB
template <typename T>
T fastExp3(T x, unsigned long long n) {
	if (n < 2) { return (1==n ? x : T(1)); }
	std::stack<bool> bits;
	for (; n > 3; n >>= 1) {
		bits.push(n&1);
	}
	
	// we know that n is either two or three
	T ans = (2==n ? x*x : x*x*x);
	
	for (; !bits.empty(); bits.pop()) {
		ans *= ans;
		if (bits.top()) { ans *= x; }
	}
	return ans;
}

// LSB -> MSB
template <typename T>
T fastExp4(T x, unsigned long long n) {
	std::queue<bool> bits;
	for (; n > 0; n >>= 1) {
		bits.push(n & 1);
	}

	T x_to_a_power_of_2 = x;
	T ans = 1;

	for (; !bits.empty(); bits.pop()) {
		if (bits.front()) { ans *= x_to_a_power_of_2; }
		x_to_a_power_of_2 *= x_to_a_power_of_2;
	}

	return ans;
}

template <typename T, typename BitIter>
T fastExp5(T x, BitIter MSB, BitIter pastLSB) {
	T ans(1);

	for (BitIter pos = MSB; pos != pastLSB; --pos) {
		ans *= ans;
		if (*pos) { ans *= x; }
	}

	return ans;
}

template <typename T, typename BitIter>
T fastExp6(T x, BitIter LSB, BitIter pastMSB) {
	T x_to_a_power_of_2 = x;
	T ans(1);

	for (BitIter pos = LSB; pos != pastMSB; ++pos) {
		if (*pos) { ans *= x_to_a_power_of_2; }
		x_to_a_power_of_2 *= x_to_a_power_of_2;
	}		

	return ans;
}
