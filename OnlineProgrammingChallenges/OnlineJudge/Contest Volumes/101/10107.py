import sys

from heapq import heappush #, heappop

class Heap:
	def __init__(self, minDir):
		self.data = []
		self.minDir = minDir

	def size(self):
		return len(self.data)

	def push(self, val):
		heappush(self.data, val)

	def pop(self):
		t = self.top()
		self.data.remove(t)
		return t

	def top(self):
		return min(self.data) if self.minDir else max(self.data)

def getMedian(newValue, currentMedian, minHeap, maxHeap):
	smaller = newValue < currentMedian
	destHeap = maxHeap if smaller else minHeap
	otherHeap = minHeap if smaller else maxHeap

	if destHeap.size() > otherHeap.size():
		# Need to move top element on destination heap to other heap
		otherHeap.push(destHeap.pop())

	destHeap.push(newValue)

	return (destHeap.top() + otherHeap.top()) // 2 if destHeap.size() == otherHeap.size() else destHeap.top()

currentMedian = 0
minHeap = Heap(True)
maxHeap = Heap(False)

line = sys.stdin.readline()
while len(line) > 0:
	i = int(line)
	
	currentMedian = getMedian(i, currentMedian, minHeap, maxHeap)

	print(currentMedian)

	line = sys.stdin.readline()
