#include <string>
#include <iostream>
#include <vector>
#include <sstream>

using namespace std;
template <typename T>
class Stack {
    vector<T> vals;
public:
    Stack() { ; }
    const T &top() const { return vals.back(); }
    bool empty() const { return vals.empty(); }
    void push(const T &value) { vals.push_back(value); }
    void pop() { vals.pop_back(); }
};

int priority(char c) {
	switch (c) {
	case '(':
		return 0;
		break;
	case ')':
		return 4;
		break;
	case '^':
		return 3;
		break;
	case '*':
	case '/':
	case '%':
		return 2;
		break;
	case '+':
	case '-':
		return 1;
		break;
	}

	return -1;
}

//TODO: Dr. Knisely says decide how to do "priority"
string in2Post(const string& exp) {
    ostringstream oss;
    Stack<char> ops;
    for (char c : exp) {
        if (isspace(c)) { oss << c; continue; }
        if (isdigit(c)) { oss << c; continue; }
        switch (c) {
            case '(':
                ops.push(c);
                break;
            case ')':
                for (; !ops.empty() && ops.top() != '('; ops.pop()) { // !ops.empty() means checking if stack is empty
					oss << " " << ops.top();
				}
                if (ops.empty()) { throw string("Unmatched )"); } // or something else
                ops.pop(); // remove '('
                break;

            // These all associate from right to left
            case '^':
                for (; !ops.empty() && priority(c) < priority(ops.top()); ops.pop()) {
					oss << " " << ops.top();
				}
				ops.push(c);
                break;
            
            // These all associate from left to right
            case '+':
            case '-':
            case '*':
            case '/':
            case '%':
                for (; !ops.empty() && priority(c) <= priority(ops.top()); ops.pop()) {
					oss << " " << ops.top();
				}
				ops.push(c);
				break;
        }
    }
    // Empty the stack
    for (; !ops.empty(); ops.pop()) {
		// Look for an unmatched '('
		if (ops.top() == '(') { throw string("Unmatched ("); }

		oss << " " << ops.top();
    }
    return oss.str();
}

int main() {
    string exp;
    while (getline(cin, exp)){
        try {
            cout << exp <<'\t' << in2Post(exp) << endl;
        }
        catch (string msg) {
            cout << msg << endl;
        }
    }
}