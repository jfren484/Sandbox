#include <iostream>
#include <queue>
#include <string>
#include <sstream>
#include <vector>

using namespace std;

#define MinHeap priority_queue<int, vector<int>, greater<int>>
#define MaxHeap priority_queue<int, vector<int>, less<int>>

int getMedian(int newValue, int& currentMedian, MinHeap & minHeap, MaxHeap & maxHeap)
{
	if (newValue < currentMedian) {
		if (maxHeap.size() == minHeap.size()) {
			maxHeap.push(newValue);
			currentMedian = maxHeap.top();
		}
		else {
			if (maxHeap.size() > minHeap.size()) {
				// Need to move top element on min heap and put it in max heap
				minHeap.push(maxHeap.top());
				maxHeap.pop();
			}

			maxHeap.push(newValue);
			currentMedian = (maxHeap.top() + minHeap.top()) / 2;
		}
	}
	else {
		if (maxHeap.size() == minHeap.size()) {
			minHeap.push(newValue);
			currentMedian = minHeap.top();
		}
		else {
			if (maxHeap.size() < minHeap.size()) {
				// Need to move top element on max heap and put it in min heap
				maxHeap.push(minHeap.top());
				minHeap.pop();
			}

			minHeap.push(newValue);
			currentMedian = (maxHeap.top() + minHeap.top()) / 2;
		}
	}

	return currentMedian;
}

int main()
{
	string val;
	int currentMedian = 0, i;
	MinHeap* minHeap = new MinHeap();
	MaxHeap* maxHeap = new MaxHeap();

	while (getline(cin, val)) {
		i = stoi(val);
		currentMedian = getMedian(i, currentMedian, *minHeap, *maxHeap);
		cout << currentMedian << endl;
	}

	delete minHeap;
	delete maxHeap;

	return 0;
}
