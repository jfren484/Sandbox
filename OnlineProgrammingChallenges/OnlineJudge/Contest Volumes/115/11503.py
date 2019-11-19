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
			return -self.parents[a]

		size = 0

		# now we know that we have different trees
		if self.parents[a] < self.parents[b]: # then a is bigger
			self.parents[a] += self.parents[b]
			self.parents[b] = a
			size = -self.parents[a]
		else:
			self.parents[b] += self.parents[a]
			self.parents[a] = b
			size = -self.parents[b]

		--self.number_of_sets

		return size

# main
testCases = int(sys.stdin.readline())

for tc in range(testCases):
	friendships = int(sys.stdin.readline())

	p = Partition(friendships * 2 + 1)
	m = {}
	nextId = 1

	for i in range(friendships):
		parts = sys.stdin.readline().split()
		a = parts[0]
		b = parts[1]

		if not a in m:
			m[a] = nextId
			nextId += 1
		if not b in m:
			m[b] = nextId
			nextId += 1

		size = p.merge(m[a], m[b])

		print(size)
