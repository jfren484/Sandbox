#include <algorithm>
#include <chrono>
#include <fstream>
#include <iostream>
#include <map>
#include <sstream>
#include <string>
#include <vector>

using namespace std;
using namespace std::chrono;

struct WordFreq {
	string word;
	int freq;
	WordFreq(string w = "", int f = 0) : word(w), freq(f) { ; }
};

bool operator <(const WordFreq& wf1, const WordFreq& wf2) {
	return (wf1.word < wf2.word);
}

int main(int argc, const char* argv[])
{
	if (argc < 2) {
		cout << "Usage: Program3 <file>" << endl;
		return 1;
	}

	ifstream in(argv[1]);
	if (!in.is_open()) {
		cout << "Could not read file " << argv[1] << endl;
		return 1;
	}

	high_resolution_clock::time_point t1, t2;
	duration<double> time_span;

	t1 = high_resolution_clock::now();

	int freq;
	string word;
	vector<WordFreq> wordFreqs;

	while (in >> word >> freq) {
		wordFreqs.push_back({ word, freq });
	}
	sort(wordFreqs.begin(), wordFreqs.end());

	int wordCount = wordFreqs.size();

	vector<vector<int>> costs(wordCount + 1, vector<int>(wordCount + 1)), roots(wordCount, vector<int>(wordCount + 1));

	for (int i = 0; i < wordCount; ++i) {
		costs[i][i + 1] = wordFreqs[i].freq;
	}

	for (int d = 0; d < wordCount - 1; ++d) {
		for (int e = 0; e < wordCount - d - 1; ++e) {
			int row = e;
			int col = e + d + 2;

			costs[row][col] = INT32_MAX;

			for (int k = 0; k < d + 2; ++k) {
				int cost = costs[row][col - d - 2 + k] + costs[row + 1 + k][col];
				if (cost < costs[row][col]) {
					costs[row][col] = cost;
					roots[row][col] = row + k;
				}
			}

			for (int x = row; x < row + d + 2; ++x) {
				costs[row][col] += wordFreqs[x].freq;
			}
		}
	}

	cout << wordFreqs[roots[0][wordCount]].word << " " << costs[0][wordCount] << endl;

	t2 = high_resolution_clock::now();
	time_span = duration_cast<duration<double>>(t2 - t1);

	cout << "Time taken: " << time_span.count() << " seconds." << endl;

	in.close();
}
