import sys

cycleLengths = {1:1}

def calc_cycle_length(n):
	global cycleLengths

	if n not in cycleLengths:
		newN = n * 3 + 1 if n % 2 else n // 2
		cycleLengths[n] = 1 + calc_cycle_length(newN)
		
	return cycleLengths[n]

line = sys.stdin.readline()
while len(line) > 0:
	parts = line.split()
	i = int(parts[0])
	j = int(parts[1])
	start = i if i <= j else j
	end = j if i <= j else i
	max = 0

	for n in range(start, end + 1):
		cycleLength = calc_cycle_length(n)
		if cycleLength > max: max = cycleLength

	print(f"{i} {j} {max}")

	line = sys.stdin.readline()
