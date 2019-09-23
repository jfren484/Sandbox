#pragma once
#include <cstdio>
#include <vector>

template <typename T>
class VectorIter
{
private:
	std::vector<T> theList;
	int index;

public:
	VectorIter(std::vector<T> _theList);
	VectorIter(std::vector<T> _theList, int _index);
	//VectorIter(ArrayIter<T> toCopy);

	bool isEqualTo(VectorIter<T> other);
	T get();
	void set(T value);
	void next();
	VectorIter<T> copy();
};
