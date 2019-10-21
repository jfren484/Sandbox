#ifndef PQ_H
#define PQ_H
#include <vector>
#include <utility>
#include <functional>

template <typename T, typename Comp=std::less<T> >
class PQ {
public:
	const int MaxChildren;
private:
	std::vector<T> heap;
	
	int parent(int k) const { return (k-1)/MaxChildren; } 
	int firstChild(int k) const { return MaxChildren*k+1; }
	int lastChild(int k) {
		return ((MaxChildren*(k+1) < heap.size() ? MaxChildren*(k+1) : heap.size()-1);
	}
	bool hasParent(int k) const { return (k>0); }
	bool hasChild(int k) { return firstChild(k) < heap.size(); }
	//std::pair<typename std::vector<T>::iterator, typename std::vector<T>::iterator>
	void moveup(int start) {
		Comp compare;
		while (hasParent(start)) {
			int prnt = parent(start);
			if (compare(heap[parent], heap[start])) {
				std::swap(heap[parent], heap[start]);
				start = prnt;
			} else { break; }
		}
	}
	
	void movedown(int start) {
		Comp compare;
		while (hasChild(start)) {
			int maxchild =
				max_element(
					heap.begin()+firstChild(start),
					heap.begin()+lastChild(start)+1)-heap.begin();
			if (compare(heap[start], heap[maxchild])) {
				std::swap(heap[start], heap[maxchild]);
				start = maxchild;
			} else { break; }
		}
	}
	
public:
	PQ(); // constructs an empty heap
	
	// constructs a heap with the values in the range [begin, end)
	template <typename Iter>
	PQ(Iter begin, Iter end);
	
	void push(const T& value);
	void pop();
	const T& top() const;
}; // end of class PQ

#endif

