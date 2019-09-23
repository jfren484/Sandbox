#include <utility>
#include <functional>
#include <algorithm>

#ifdef DEBUG
#include <iostream>

template <typename Iter>
void printRange(Iter begin, Iter end) {
	for (Iter pos=begin; pos != end; ++pos) {
		std::cout << *pos << ' ';
	}
	std::cout << std::endl;
}
#endif

namespace Mergesort {
	template <typename Iter1, typename Iter2, typename Compare>
	void sort(Iter1 begin, Iter1 end, Iter2 hold, Compare cmp) {
		auto mid=begin;
		int size = 0;
		
		// count the items in the list and find the middle of the list
		for (auto pos=begin; pos != end; ++pos, ++size) {
			if (0 == size % 2) { ++mid; }
		}
#ifdef DEBUG
		std::cout << "Found middle; size=" << size << std::endl;
		if (size > 2) {
			std::cout << "First Half: ";
			printRange(begin, mid);
			std::cout << "Second Half: ";
			printRange(mid, end);
		}
#endif
		// nonrecursive cases: size <= 2
		if (size <= 2) {
			if (2 == size && cmp(*mid, *begin)) {
				std::swap(*mid, *begin);
			}
			return;
		}
		
		sort(begin, mid, hold, cmp);
		sort(mid, end, hold, cmp);
		Iter2 holdEnd=std::merge(begin, mid, mid, end, hold, cmp);
		std::copy(hold, holdEnd, begin);
	}
	
	template <typename Iter1, typename Iter2>
	void sort(Iter1 begin, Iter1 end, Iter2 hold) {
		sort(begin, end, hold, std::less<decltype(*begin)>());
	}
		
};
