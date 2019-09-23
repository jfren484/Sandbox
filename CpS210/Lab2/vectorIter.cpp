#include <cstdio>
#include <vector>
#include "vectorIter.h"

template class VectorIter<unsigned int>;

template <typename T>
VectorIter<T>::VectorIter(std::vector<T> _theList) {
	theList = _theList;
	index = 0;
}

template <typename T>
VectorIter<T>::VectorIter(std::vector<T> _theList, int _index) {
	theList = _theList;
	index = _index;
}

//VectorIter(VectorIter<T> toCopy) {
//	theList = toCopy.theList;
//	index = toCopy.index;
//}

template <typename T>
T VectorIter<T>::get() { return theList[index]; }

template <typename T>
void VectorIter<T>::set(T value) { theList[index] = value; }

template <typename T>
void VectorIter<T>::next() { ++index; }

template <typename T>
VectorIter<T> VectorIter<T>::copy() { return VectorIter<T>(theList, index); }

template <typename T>
bool VectorIter<T>::isEqualTo(VectorIter<T> other) {
	return other.index == index && other.theList == theList;
}
