#define _CRT_SECURE_NO_WARNINGS
#define _CRT_RAND_S

#include <stdio.h>
#include <stdlib.h>

int max = 100;

int main() {
	unsigned int number;
	rand_s(&number);
	int magic_number = number - (number / max * max) + 1;

	int your_guess = 0;
	int count = 0;

	while (your_guess != magic_number) {
		printf("I'm thinking of a number between 1 and 100; what is it? ");
		scanf("%d", &your_guess);

		count++;

		if (your_guess > magic_number) {
			printf("Too high!\n");
		}
		else if (your_guess < magic_number) {
			printf("Too low!\n");
		}
	}

	printf("You guessed it in %d guesses! Thanks for playing...\n", count);

	return 0;
}