#include <iostream>
#include <vector>
#include "adjlist.h"
using namespace std;

int main()
{
	AdjList<unsigned int> adjlist;

	int a, b, weight;
	while (cin >> a >> b >> weight) {
		adjlist.addEdge(a, b, weight);
	}

	AdjList<unsigned int>::DisjointSet dj(adjlist.size(), adjlist.size() - 1);

	adjlist.kruskals(dj);

	weight = 0;
	for (int i = 0; i < dj.size(); i++) {
		cout << dj[i].v1 << " " << dj[i].v2 << endl;
		weight += dj[i].w;
	}

	cout << weight << endl;
}