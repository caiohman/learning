#include <cstdlib>
#include <sstream>
#include <vector>
#include <iostream>

using namespace std;

vector<int> parseInts(string str) {
	std::vector<int> numbers = {};

	std::stringstream ss(str);
	std::string number;
	while(std::getline(ss, number, ',')) numbers.push_back(std::stoi(number));

	return numbers;
}

int main() {
    string str;
    cin >> str;
    vector<int> integers = parseInts(str);
    for(std::size_t i = 0; i < integers.size(); i++) {
        cout << integers[i] << "\n";
    }

    return 0;
}
