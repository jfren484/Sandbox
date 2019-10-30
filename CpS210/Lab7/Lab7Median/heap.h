#ifndef HEAP_H
#define HEAP_H

#include <queue>
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

#endif
