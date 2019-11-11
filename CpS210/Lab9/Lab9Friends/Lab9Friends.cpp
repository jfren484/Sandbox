#include <iostream>
#include <sstream>
#include <string>
#include <vector>

using namespace std;

class Partition {
	vector<int> parent;
	unsigned int nSets;
public:
	Partition(unsigned int N) : parent(N, -1), nSets(N) { ; }
	unsigned int NumberOfSets() const { return nSets; }

	// return the root of the tree containing k
	int find(int k) {
		if (parent[k] < 0) {
			return k;
		}

		int start = k;
		while (parent[k] >= 0) { // not at the root 
			k = parent[k];
		}

		//while (k != parent[start]) {
		//	int hold = parent[start];
		//	parent[start] = k;
		//	k = hold;
		//}

		return k;
	}

	// merge the set containing a with the set containing b
	bool merge(int a, int b) {
		a = find(a);
		b = find(b);

		if (a == b) { return false; }

		// now we know that we have different trees
		if (parent[a] < parent[b]) { // then a is bigger
			parent[a] += parent[b];
			parent[b] = a;
		}
		else {
			parent[b] += parent[a];
			parent[a] = b;
		}

		--nSets;

		return true;
	}

	int largestSet() {
		int largest = 0;

		for (unsigned int i = 0; i < parent.size(); ++i) {
			if (-parent[i] > largest) {
				largest = -parent[i];
			}
		}

		return largest;
	}

	void print(ostream& os) {
		os << parent[0];
		for (unsigned int i = 1; i < parent.size(); ++i) {
			os << ", " << parent[i];
		}
		os << endl;
	}
};

vector<string> split(const string& s, char delimiter)
{
	vector<string> tokens;
	string token;
	istringstream tokenStream(s);

	while (getline(tokenStream, token, delimiter))
	{
		tokens.push_back(token);
	}

	return tokens;
}

int main()
{
	string line;
	vector<string> parts;
	int testCases, citizens, pairs, a, b;

	getline(cin, line);
	testCases = stoi(line);

	for (int tc = 0; tc < testCases; ++tc) {
		getline(cin, line);
		parts = split(line, ' ');
		citizens = stoi(parts[0]);
		pairs = stoi(parts[1]);

		Partition p(citizens + 1);

		for (int i = 0; i < pairs; ++i) {
			getline(cin, line);
			parts = split(line, ' ');
			a = stoi(parts[0]);
			b = stoi(parts[1]);

			p.merge(a, b);
		}

		cout << p.largestSet() << endl;
	}

	return 0;
}
