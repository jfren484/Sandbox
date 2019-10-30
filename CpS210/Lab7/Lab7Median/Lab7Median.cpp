#include <iostream>
#include <string>
#include "heap.h"

using namespace std;

int getMedian(int newValue, int currentMedian, Heap<int>& minHeap, Heap<int>& maxHeap)
{
	bool smaller = newValue < currentMedian;
	Heap<int>* destHeap = smaller ? &maxHeap : &minHeap;
	Heap<int>* otherHeap = smaller ? &minHeap : &maxHeap;

	if (destHeap->size() > otherHeap->size()) {
		// Need to move top element on destination heap to other heap
		otherHeap->push(destHeap->top());
		destHeap->pop();
	}

	destHeap->push(newValue);

	return destHeap->size() == otherHeap->size()
		? (destHeap->top() + otherHeap->top()) / 2
		: destHeap->top();
}

int main()
{
	string val;
	int currentMedian = 0, i;
	MinHeap<int>* minHeap = new MinHeap<int>();
	MaxHeap<int>* maxHeap = new MaxHeap<int>();

	while (getline(cin, val)) {
		i = stoi(val);
		currentMedian = getMedian(i, currentMedian, *minHeap, *maxHeap);
		cout << currentMedian << endl;
	}

	delete minHeap;
	delete maxHeap;

	return 0;
}
