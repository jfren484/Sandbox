import sys

class Partition:
	def __init__(self, n):
		self.parents = [-1] * n
		self.number_of_sets = n

	# return the root of the tree containing k
	def find(self, k):
		if self.parents[k] < 0:
			return k

		start = k
		while self.parents[k] >= 0: # not at the root 
			k = self.parents[k]

		return k

	# merge the set containing a with the set containing b
	def merge(self, a, b):
		a = self.find(a)
		b = self.find(b)

		if a == b:
			return False

		# now we know that we have different trees
		if self.parents[a] < self.parents[b]: # then a is bigger
			self.parents[a] += self.parents[b]
			self.parents[b] = a
		else:
			self.parents[b] += self.parents[a]
			self.parents[a] = b

		--self.number_of_sets

		return True

	def largestSet(self):
		largest = 0

		for i in range(len(self.parents)):
			if -self.parents[i] > largest:
				largest = -self.parents[i]

		return largest

# main
testCases = int(sys.stdin.readline())

for tc in range(testCases):
	parts = sys.stdin.readline().split()
	citizens = int(parts[0])
	pairs = int(parts[1])

	p = Partition(citizens + 1)

	for i in range(pairs):
		parts = sys.stdin.readline().split()
		a = int(parts[0])
		b = int(parts[1])
		p.merge(a, b)

	print(p.largestSet())
