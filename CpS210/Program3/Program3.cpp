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

//struct WordFreq {
//	string word;
//	int freq;
//	WordFreq(string w = "", int f = 0) : word(w), freq(f) { ; }
//};
//bool operator <(const WordFreq& wf1, const WordFreq& wf2) {
//	return (wf1.word < wf2.word);
//}

//int main() {
//	int freq;
//	string word;
//	vector<WordFreq> wf;
//	while (cin >> word >> freq) {
//		wf.push_back({ word,freq });
//	}
//	sort(wf.begin(), wf.end());
//	for (auto pr : wf) {
//		cout << '(' << pr.word << ',' << pr.freq << ")\n";
//	}
//	return 0;
//}

int main(int argc, const char* argv[])
{
	if (argc < 2) {
		cout << "Specify input file on command line" << endl;
		return 1;
	}

	ifstream in(argv[1]);
	if (!in.is_open()) {
		cout << "Could not read file " << argv[1] << endl;
		return 1;
	}

	string word;
	int freq;
	vector<string> words;
	map<string, int> wordFreqs;

	high_resolution_clock::time_point t1 = high_resolution_clock::now();

	while (in >> word >> freq) {
		words.push_back(word);
		wordFreqs[word] = freq;
	}

	sort(words.begin(), words.end());

	high_resolution_clock::time_point t2 = high_resolution_clock::now();
	duration<double> time_span = duration_cast<duration<double>>(t2 - t1);
	cout << "Time taken for " << words.size() << " values: " << time_span.count()  << " seconds." << endl;

	//for (auto pr : wordFreqs) {
	//	cout << '(' << pr.first << ',' << pr.second << ")\n";
	//}
}
