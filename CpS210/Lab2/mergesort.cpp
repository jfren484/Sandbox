#include <cstdio>
#include "vectorIter.h"
#include "mergesort.h"

template class Mergesort<unsigned int>;

template <typename T>
void Mergesort<T>::print(const char* caption, VectorIter<T> begin, VectorIter<T> end) {
	// Make copies of all iterators whose next method will be called
	VectorIter<T> pos = begin;//.copy();
	printf("%s: \n", caption);
	for (; !pos.isEqualTo(end); pos.next()) {
		printf(" %d", pos.get());
	}
	printf("\n");
}

template <typename T>
void Mergesort<T>::swap(VectorIter<T> a, VectorIter<T> b) {
	T c = a.get();
	a.set(b.get());
	b.set(c);
}

template <typename T>
VectorIter<T> Mergesort<T>::append(VectorIter<T> resultHold, VectorIter<T> begin, VectorIter<T> end) {
	// Make copies of all iterators whose next method will be called
	VectorIter<T> pos = begin;//.copy();
	VectorIter<T> result = resultHold;//.copy();

	for (; !pos.isEqualTo(end); result.next(), pos.next()) {
		result.set(pos.get());
	}
	return result;
}

template <typename T>
void Mergesort<T>::merge(VectorIter<T> begin1, VectorIter<T> end1, VectorIter<T> begin2, VectorIter<T> end2, VectorIter<T> result, VectorIter<T> beginHold) {

	// Make copies of all iterators whose next method will be called
	VectorIter<T> pos = beginHold;//.copy();
	VectorIter<T> iter1 = begin1;//.copy();
	VectorIter<T> iter2 = begin2;//.copy();

	// Debugging information
	printf("merging\n");
	print("list 1", iter1, end1);
	print("list 2", iter2, end2);

	while (!iter1.isEqualTo(end1) && !iter2.isEqualTo(end2)) {
		if (iter2.get() < iter1.get()) {
			// the iter2's value is used next
			pos.set(iter2.get());
			pos.next();
			iter2.next();
		}
		else {
			// the iter1's value is used next
			pos.set(iter1.get());
			pos.next();
			iter1.next();
		}
	}

	pos = append(pos, iter1, end1);
	pos = append(pos, iter2, end2);
	VectorIter<T> resultEnd = append(result, beginHold, pos); // used for debugging
	print("merged list", result, resultEnd);
}

template <typename T>
void Mergesort<T>::sort(VectorIter<T> begin, VectorIter<T> end, VectorIter<T> hold) {
	// Make copies of all iterators whose next method will be called
	VectorIter<T> pos = begin;//.copy();
	VectorIter<T> mid = begin;//.copy();

	printf("Inside sort\n");

	int size = 0;
	// count the items in the list and find the middle of the list
	for (; !pos.isEqualTo(end); pos.next(), ++size) {
		printf(" %d", pos.get());
		if (0 == size % 2) { mid.next(); } // increment mid every other time
	}
	printf("; Found middle; size=%d\n", size);

	if (size <= 2) {
		if (2 == size && mid.get() < begin.get()) {
			swap(begin, mid);
		}
		return;
	}

	sort(begin, mid, hold);
	sort(mid, end, hold);
	merge(begin, mid, mid, end, begin, hold);
}
