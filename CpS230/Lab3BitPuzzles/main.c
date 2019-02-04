#include <stdio.h>
#include <assert.h>

// Guidelines: https://lh3.googleusercontent.com/--SfeQgbaP4w/XFEE_tHcGxI/AAAAAAAAG2Q/cnLLw52DaBIQNtWjS5bsh6GXyV8GHArFgCL0BGAYYCw/h2048/8139312897357729334%253Faccount_id%253D0

/* [Homework Problem 2.64]
 * Return 1 when any odd bit of x equals 1; 0 otherwise.
 * Assume w=32.
 */
int any_odd_one(unsigned x) {
	unsigned clearedEvenBits = x & 0xaaaaaaaa;

	return clearedEvenBits != 0;
}

/* [Homework Problem 2.68]
 * Mask with least significant <n> bits set to 1
 * Examples: n = 6 --> 0x3F, n = 17 --> 0x1ffff
 * Assume 1 <= n <= w
 */
int lower_one_mask(int x) {
	unsigned fullMask = -1;
	int shiftCount = 32 - x;
	unsigned mask = fullMask >> shiftCount;

	return mask;
}

/* [Homework problem 2.66]
 * Generate mask indicating leftmost 1 in x.  Assume w=32.
 * E.g., 0xff00 -> 0x80000, and 0x6600 -> 0x4000
 * If x = 0, then return 0.
 *
 * Your code should contain a total of at most 15 arithmetic, bitwise, and logical operations.
 * Hint: First transform x into a bit vector of the form [0...011...1].
 */
int leftmost_one(unsigned x) {
	x |= x >> 16;
	x |= x >> 8;
	x |= x >> 4;
	x |= x >> 2;
	x |= x >> 1;

	x ^= x >> 1;

	return x;
}

int main() {
	printf("CpS 230 Lab 3: Jay French (jfren484)\n");

	/* trivial 2.64 tests */
	assert(any_odd_one(1) == 0);
	assert(any_odd_one(2) == 1);

	assert(any_odd_one(0) == 0);
	assert(any_odd_one(4) == 0);
	assert(any_odd_one(8) == 1);
	assert(any_odd_one(0x55555555) == 0);
	assert(any_odd_one(0xaaaaaaaa) == 1);
	assert(any_odd_one(0xffffffff) == 1);

	/* 2.68 tests from the book */
	assert(lower_one_mask(6) == 0x3f);      /* the book erroneously claims n=6 -> 0x2f (10_1111) instead of 0x3f (11_1111) */
	assert(lower_one_mask(17) == 0x1ffff);

	assert(lower_one_mask(1) == 1);
	assert(lower_one_mask(31) == 0x7fffffff);
	assert(lower_one_mask(32) == 0xffffffff);

	/* 2.66 tests from the book */
	assert(leftmost_one(0xff00) == 0x8000);
	assert(leftmost_one(0x6600) == 0x4000);

	assert(leftmost_one(0xffff) == 0x8000);
	assert(leftmost_one(0x0000) == 0x0000);
	assert(leftmost_one(0x1111) == 0x1000);
	assert(leftmost_one(0x0222) == 0x0200);
	assert(leftmost_one(0x0044) == 0x0040);

	return 0;
}