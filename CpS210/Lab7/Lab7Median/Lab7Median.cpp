#include <iostream>
#include <queue>
#include <string>
#include <sstream>
#include <vector>

using namespace std;

#define MaxHeap priority_queue<int, vector<int>, greater<int>>
#define MinHeap priority_queue<int, vector<int>, less<int>>

int getMedian(int newValue, int& currentMedian, MinHeap & minHeap, MaxHeap & maxHeap)
{
	if (newValue < currentMedian) {
		if (minHeap.size() == maxHeap.size()) {
			minHeap.push(newValue);
			currentMedian = minHeap.top();
		}
		else {
			if (minHeap.size() > maxHeap.size()) {
				// Need to move top element on max heap and put it in min heap
				maxHeap.push(minHeap.top());
				minHeap.pop();
			}

			minHeap.push(newValue);
			currentMedian = (minHeap.top() + maxHeap.top()) / 2;
		}
	}
	else {
		if (minHeap.size() == maxHeap.size()) {
			maxHeap.push(newValue);
			currentMedian = maxHeap.top();
		}
		else {
			if (minHeap.size() < maxHeap.size()) {
				// Need to move top element on min heap and put it in max heap
				minHeap.push(maxHeap.top());
				maxHeap.pop();
			}

			maxHeap.push(newValue);
			currentMedian = (minHeap.top() + maxHeap.top()) / 2;
		}
	}

	return currentMedian;
}

int main()
{
	string val;
	int currentMedian = 0, i;
	MinHeap* left = new MinHeap();
	MaxHeap* right = new MaxHeap();

	while (getline(cin, val)) {
		i = stoi(val);
		currentMedian = getMedian(i, currentMedian, *left, *right);
		cout << currentMedian << endl;
	}

	delete left;
	delete right;

	return 0;
}
