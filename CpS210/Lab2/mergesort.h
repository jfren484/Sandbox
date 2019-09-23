#pragma once
template <typename T>
class Mergesort {
public:
	static void print(const char* caption, VectorIter<T> begin, VectorIter<T> end);

	static void swap(VectorIter<T> a, VectorIter<T> b);

	static VectorIter<T> append(VectorIter<T> resultHold, VectorIter<T> begin, VectorIter<T> end);

	static void merge(VectorIter<T> begin1, VectorIter<T> end1, VectorIter<T> begin2, VectorIter<T> end2, VectorIter<T> result, VectorIter<T> beginHold);

	static void sort(VectorIter<T> begin, VectorIter<T> end, VectorIter<T> hold);
};
