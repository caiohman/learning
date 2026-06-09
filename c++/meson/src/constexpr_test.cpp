#include <iostream>

constexpr int fact(int n) {
    return n <= 1 ? 1 : (n * fact(n - 1));
}

template<int n> struct constN {
    constN() { std::cout << n << '\n'; }
};

int main() {
    constN <fact(4)> out1;
}
