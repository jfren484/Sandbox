#include <cstdio>
#include <cstdlib>
#include <vector>

void fillWithRandomValues(std::vector<unsigned int> &vals) {
    for (auto &val : vals) { val = rand() % 1000000000; }
}

void printVector(const std::vector<unsigned int> &vals) {
#ifdef DEBUG
  for (auto val : vals) { printf("%u ", val);}
  puts("");
#endif
}

int main(int argc, const char *argv[]) {
    int cnt,N;
    
    if (argc < 2) { puts("usage: timeMerge vectorLength\nvectorLength > 0"); return 0; }
    N = atoi(argv[1]);
    if (N < 1) { puts("usage: timeMerge vectorLength\nvectorLength > 0"); return 0; }
    std::vector<unsigned int> vals(N);
    fillWithRandomValues(vals);
    printVector(vals);
    return 0;
}