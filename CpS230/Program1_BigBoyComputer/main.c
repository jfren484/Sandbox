#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define RAMSIZE 4096
#define DEBUG 0

typedef unsigned char byte;  // (make "byte" an alias for "unsigned char")
typedef unsigned short word; // (make "word" an alias for "unsigned short")

byte RAM[RAMSIZE];
word Acc;
unsigned int PC;

char errorTemp[1000];

void abortWithMessage(char* message) {
	printf("ERROR: %s\n", message);
	exit(1);
}

word read(unsigned int address) {
	return RAM[address + 1] << 8 | RAM[address];
}

void store(unsigned int address, word value) {
	RAM[address + 1] = value >> 8;
	RAM[address] = value & 0xFF;
}

void setPC(int value) {
	if (value < 0 || value > RAMSIZE - 2) {
		sprintf_s(errorTemp, 1000, "PC set outside of allowed bounds [0 - %d]: %d", RAMSIZE - 2, value);
		abortWithMessage(errorTemp);
	}

	PC = value;
}

void write_stdio(word mode) {
	switch (mode) {
	case 0:
		printf("%d", Acc);
		break;
	case 1:
		printf("%x", Acc);
		break;
	case 2:
		printf("%c", Acc & 0x7F);
		break;
	default:
		sprintf_s(errorTemp, 1000, "Invalid mode for output: %d", mode);
		abortWithMessage(errorTemp);
		break;
	}
}

void read_stdio(word mode) {
	int num;
	char c;

	switch (mode) {
	case 0:
		scanf_s("%d", &num);
		Acc = num;
		break;
	case 1:
		scanf_s("%x", &num);
		Acc = num;
		break;
	case 2:
		scanf_s("%c", &c);
		Acc = c & 0x7F;
		break;
	default:
		sprintf_s(errorTemp, 1000, "Invalid mode for input: %d", mode);
		abortWithMessage(errorTemp);
		break;
	}
}

byte step() {
	if (DEBUG) printf("PC: %x - ", PC);

	// Fetch
	word instr = read(PC);
	setPC(PC + 2);

	// Decode
	byte opCode = instr >> 12;
	word operand = instr & 0x0FFF;

	// Execute
	switch (opCode) {
	case 0:
		// hlt - do nothing
		if (DEBUG) printf("hlt\n");
		break;
	case 1:
		// not Acc
		Acc = ~Acc;
		if (DEBUG) printf("not - Acc: %x\n", Acc);
		break;
	case 2:
		// shl
		Acc <<= operand;
		if (DEBUG) printf("shl - Acc << %d: %x\n", operand, Acc);
		break;
	case 3:
		// shr
		Acc >>= operand;
		if (DEBUG) printf("shr - Acc >> %d: %x\n", operand, Acc);
		break;
	case 4:
		// inc
		Acc++;
		if (DEBUG) printf("inc - Acc++: %x\n", Acc);
		break;
	case 5:
		// dec
		Acc--;
		if (DEBUG) printf("dec - Acc--: %x\n", Acc);
		break;
	case 6:
		// jmp
		setPC(operand);
		if (DEBUG) printf("jmp - %x\n", operand);
		break;
	case 7:
		// jaz
		if (Acc == 0) {
			setPC(operand);
			if (DEBUG) printf("jaz - Acc: %x, PC: %x\n", Acc, operand);
		}
		else {
			if (DEBUG) printf("jaz - Acc: %x\n", Acc);
		}
		break;
	case 8:
		// lda
		Acc = read(operand);
		if (DEBUG) printf("lda - RAM: %x, Acc: %x\n", operand, Acc);
		break;
	case 9:
		// sta
		store(operand, Acc);
		if (DEBUG) printf("sta - RAM: %x, Acc: %x\n", operand, Acc);
		break;
	case 10:
		// add
		Acc += read(operand);
		if (DEBUG) printf("add - %x, Acc: %x\n", operand, Acc);
		break;
	case 11:
		// and
		Acc &= read(operand);
		if (DEBUG) printf("and - %x, Acc: %x\n", operand, Acc);
		break;
	case 12:
		// orr
		Acc |= read(operand);
		if (DEBUG) printf("orr - %x, Acc: %x\n", operand, Acc);
		break;
	case 13:
		// xor
		Acc ^= read(operand);
		if (DEBUG) printf("xor - %x, Acc: %x\n", operand, Acc);
		break;
	case 14:
		// out
		write_stdio(operand);
		if (DEBUG) printf("out - Mode: %d, Acc: %x\n", operand, Acc);
		break;
	case 15:
		// inp
		read_stdio(operand);
		if (DEBUG) printf("in - Mode: %d, Acc: %x\n", operand, Acc);
		break;
	}

	return opCode;
}

void run() {
	int i = 0;
	while (step() && ++i < 1000);

	if (i == 1000) {
		abortWithMessage("stack overflow");
	}
}

int asciiToInteger(char value) {
	if ('0' <= value && value <= '9') return value - '0';
	if ('a' <= value && value <= 'f') return value - 'a' + 10;
	if ('A' <= value && value <= 'F') return value - 'A' + 10;
	return -1;
}

void loadProgram(char* program) {
	int programLength = strlen(program);
	int i;

	for (i = 0; i < programLength; i += 2) {
		int positionInRAM = i / 2;
		RAM[positionInRAM] = ((asciiToInteger(program[i]) << 4) & 0x0F0) | (asciiToInteger(program[i + 1]) & 0xF);
	}
}

int main(int argc, char** argv) {
	for (int i = 0; i < RAMSIZE; i++) {
		RAM[i] = 0;
	}
	PC = 0;
	Acc = 0;

	char* program = "1c801ec00690000020b0167002e01c8000401c90006000004142430018000080ff00";
	loadProgram(program);

	run();
}