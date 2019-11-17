#include <algorithm>
#include <iostream>
#include <map>
#include <sstream>
#include <string>
#include <vector>

using namespace std;

//struct Datum {
//	string Word;
//	int Freq;
//
//	Datum(string word, int freq) : Word(word), Freq(freq) {}
//};

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
	string line, word;
	int freq;
	vector<string> parts;
	//vector<Datum> wordData;
	vector<string> words;
	map<string, int> wordFreqs;

	while (getline(cin, line)) {
		parts = split(line, ' ');
		word = parts[0];
		freq = stoi(parts[1]);
		//Datum datum(parts[0], stoi(parts[1]));
		//wordData.push_back(datum);
		words.push_back(word);
		wordFreqs[word] = freq;
	}

	sort(words.begin(), words.end());

	for (unsigned int i = 0; i < words.size(); ++i) {
		cout << words[i] << " " << wordFreqs[words[i]] << endl;
	}
}
