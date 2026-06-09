#include <cstdlib>
#include <iostream>

using namespace std;

void update(int *a,int *b) {
    int sum = ( *a ) + ( *b );
    int mod_diff = abs( (*a) - (*b) );

    ( *a ) = sum;
    ( *b ) = mod_diff;
}

int main() {
    int a, b;
    int *pa = &a, *pb = &b;

    std::cin >> a >> b;
    update(pa, pb);
    std::cout << a << endl << b << endl;

    return 0;
}
