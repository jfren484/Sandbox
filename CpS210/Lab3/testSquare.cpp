#include "square.h"

int main() {
    const int N=8;
    square<float> aSquare(N);

    int cnt = 1;
    for (int row = 0; row < N; ++row) {
        for (int col = 0; col < N; ++col) {
            aSquare.at(row,col) = cnt++;
        }
    }
    aSquare.print(std::cout);
}