#include <iostream>
#include <vector>

using namespace std;

int main() {

    std::vector< std::vector<int> > a;
    int n, q;

    std::cin >> n >> q;

    for (int i = 0; i < n; i++) {
        int size;
        std::cin >> size;
        std::vector<int> aux = {};
        for (int j = 0; j < size; j++) {
            int number;
            std::cin >> number;
            aux.push_back(number);
        }
        a.push_back(aux);
    }

    for(int i = 0; i < q; i++) {
        int x, y;
        std::cin >> x >> y;

        std::cout << a[x][y] << endl;
    }
    return 0;
}
