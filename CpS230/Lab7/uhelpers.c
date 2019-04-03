// CpS 230 Lab 7: Alice B. College-Student (acoll555)
//---------------------------------------------------
// Helper functions for uprintf.  Logic to print
// various kinds of output using nothing from the
// standard library except `putchar()`.
//---------------------------------------------------

// All we will use from this is `putchar()`
#include "stdio.h"

// Print all the characters from the string pointed to by <string>
void uprintf_puts(const char *string) {
    while (*string != '\0') {
        putchar(*string++);
    }
}

// Print <number> as 8 hexadecimal digits
// E.g., uprintf_putx(42) --> 0000002a
void uprintf_putx(unsigned long long int number) {
    const char hex_digits[16] = "0123456789abcdef";     // Hint: this array might help

	int lowestDigit = number % 16;
	int restOfDigits = number / 16;

	if (restOfDigits > 0) {
		uprintf_putx(restOfDigits);
	}

	putchar(hex_digits[lowestDigit]);
}

// Prints <number> in decimal (assuming unsigned semantics)
// E.g., uprintf_putu(42) --> 42
void uprintf_putu(unsigned long long int number) {
	int lowestDigit = number % 10;
	int restOfDigits = number / 10;

	if (restOfDigits > 0) {
		uprintf_putu(restOfDigits);
	}

	putchar(lowestDigit + '0');
}

// Print <number> in decimal (assuming signed semantics)
// E.g., uprintf_putd(-42) --> -42
void uprintf_putd(long int number) {
	if (number < 0) {
		putchar('-');
		number = 0 - number; // For MINLONG this won't work -4294967296
	}

	uprintf_putu(number);
}

// Print <number> as 32 binary digits ('0' or '1')
// E.g., uprintf_putb(42) --> 00000000000000000000000000101010
void uprintf_putb(unsigned long long int number) {
	int lowestDigit = number % 2;
	int restOfDigits = number / 2;

	if (restOfDigits > 0) {
		uprintf_putb(restOfDigits);
	}

	putchar(lowestDigit + '0');
}
