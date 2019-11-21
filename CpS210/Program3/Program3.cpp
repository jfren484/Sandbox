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

void method1(ifstream* in) {
	string word;
	int freq;
	vector<string> words;
	map<string, int> wordFreqs;

	while (*in >> word >> freq) {
		words.push_back(word);
		wordFreqs[word] = freq;
	}
	sort(words.begin(), words.end());
	int wordCount = words.size();

	vector<vector<int>> costs(wordCount + 1, vector<int>(wordCount + 1));
	vector<vector<int>> roots(wordCount, vector<int>(wordCount + 1));

	for (int i = 0; i < wordCount; ++i) {
		costs[i][i + 1] = wordFreqs[words[i]];
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
				costs[row][col] += wordFreqs[words[x]];
			}
		}
	}

	cout << words[roots[0][wordCount]] << " " << costs[0][wordCount] << endl;
}

struct WordFreq {
	string word;
	int freq;
	WordFreq(string w = "", int f = 0) : word(w), freq(f) { ; }
};

bool operator <(const WordFreq& wf1, const WordFreq& wf2) {
	return (wf1.word < wf2.word);
}

void method2(ifstream* in) {
	int freq;
	string word;
	vector<WordFreq> wordFreqs;

	while (*in >> word >> freq) {
		wordFreqs.push_back({ word, freq });
	}
	sort(wordFreqs.begin(), wordFreqs.end());

	int wordCount = wordFreqs.size();

	vector<vector<int>> costs(wordCount + 1, vector<int>(wordCount + 1));
	vector<vector<int>> roots(wordCount, vector<int>(wordCount + 1));

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
}

int main(int argc, const char* argv[])
{
	if (argc < 3) {
		cout << "Usage: Program3 <file> <RUN1 | RUN2 | RUNBOTH>" << endl;
		return 1;
	}

	ifstream in(argv[1]);
	if (!in.is_open()) {
		cout << "Could not read file " << argv[1] << endl;
		return 1;
	}

	bool runMethod1 = _stricmp(argv[2], "RUN1") == 0 || _stricmp(argv[2], "RUNBOTH") == 0;
	bool runMethod2 = _stricmp(argv[2], "RUN2") == 0 || _stricmp(argv[2], "RUNBOTH") == 0;

	high_resolution_clock::time_point t1, t2;
	duration<double> time_span;

	if (runMethod1) {
		cout << "Running method 1 (using map<string, int> and vector<string>)" << endl;

		t1 = high_resolution_clock::now();

		method1(&in);

		t2 = high_resolution_clock::now();
		time_span = duration_cast<duration<double>>(t2 - t1);

		cout << "Time taken for method 1: " << time_span.count() << " seconds." << endl;

		if (runMethod2) {
			in.clear();
			in.seekg(0, ios::beg);
		}
	}

	if (runMethod2) {
		cout << "Running method 2 (using vector<WordFreq>)" << endl;

		t1 = high_resolution_clock::now();

		method2(&in);

		t2 = high_resolution_clock::now();
		time_span = duration_cast<duration<double>>(t2 - t1);

		cout << "Time taken for method 2: " << time_span.count() << " seconds." << endl;
	}

	in.close();
}
