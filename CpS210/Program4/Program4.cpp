#include <iostream>
#include <vector>
#include "adjlist.h"
using namespace std;

int main()
{
	AdjList<int> adjlist;

	int a, b, weight;
	while (cin >> a >> b >> weight) {
		adjlist.addEdge(a, b, weight);
	}

	vector<unsigned int> foundBy;
	vector<int> dist;
	adjlist.dijkstra(0, foundBy, dist, 0);

	//cout << weights[i] << endl;
}
