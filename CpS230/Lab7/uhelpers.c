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
    // TODO
}

// Prints <number> in decimal (assuming unsigned semantics)
// E.g., uprintf_putu(42) --> 42
void uprintf_putu(unsigned long long int number) {
    // TODO
}

// Print <number> in decimal (assuming signed semantics)
// E.g., uprintf_putd(-42) --> -42
void uprintf_putd(long long int number) {
    // TODO (hint: implement this in terms of uprintf_putu)
}

// Print <number> as 32 binary digits ('0' or '1')
// E.g., uprintf_putb(42) --> 00000000000000000000000000101010
void uprintf_putb(unsigned long long int number) {
    // TODO
}
