#include <iostream>
#include <queue>
#include <string>
#include <vector>

using namespace std;

template <typename T>
class Heap {
public:
	virtual size_t size() = 0;
	virtual T top() = 0;
	virtual void push(T value) = 0;
	virtual void pop() = 0;
};

template <typename T>
class MinHeap : public priority_queue<T, vector<T>, greater<T>>, public Heap<T> {
public:
	size_t size() override { return priority_queue<T, vector<T>, greater<T>>::size(); }
	T top() override { return priority_queue<T, vector<T>, greater<T>>::top(); }
	void push(T value) override { priority_queue<T, vector<T>, greater<T>>::push(value); }
	void pop() override { priority_queue<T, vector<T>, greater<T>>::pop(); }
};

template <typename T>
class MaxHeap : priority_queue<T>, public Heap<T> {
public:
	size_t size() override { return priority_queue<T>::size(); }
	T top() override { return priority_queue<T>::top(); }
	void push(T value) override { priority_queue<T>::push(value); }
	void pop() override { priority_queue<T>::pop(); }
};

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
