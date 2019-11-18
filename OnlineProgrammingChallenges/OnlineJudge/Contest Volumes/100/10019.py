import sys

def decOnes(n):
	count = 0
	while (n):
		count += n % 2
		n >>= 1
	return count

testCases = int(input())

for i in range(testCases):
	str = input()
	print(f"{decOnes(int(str))} {decOnes(int(str, 16))}")
