import sys

def calcCycleLength(x):
	length = 1
	n = x

	while n != 1:
		if n % 2 == 0: n = n // 2
		else: n = n * 3 + 1
		length += 1

	return length

line = sys.stdin.readline()
while len(line) > 0:
	parts = line.split()
	i = int(parts[0])
	j = int(parts[1])
	start = i if i <= j else j
	end = j if i <= j else i
	max = 0

	for n in range(start, end + 1):
		cycleLength = calcCycleLength(n)
		if cycleLength > max: max = cycleLength

	print(f"{i} {j} {max}")

	line = sys.stdin.readline()
