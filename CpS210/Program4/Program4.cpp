#include <iostream>
#include <vector>
#include "adjlist.h"
using namespace std;

int main()
{
	int a, b, weight;
	vector<int> weights;
	while (cin >> a >> b >> weight) {
		weights.push_back(weight);
	}

	for (unsigned int i = 0; i < weights.size(); ++i) {
		cout << weights[i] << endl;
	}
}
