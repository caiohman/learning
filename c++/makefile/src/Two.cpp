#include <iostream>
#include <cstdio>
using namespace std;

class Data {
    private:
        char character;
        double double_number;
        int integer;
        long long_integer;
        float float_number;

    public:
        Data(char character, double double_number, int integer,
            long long_integer, float float_number) {
                this->character = character;
                this->double_number = double_number;
                this->integer = integer;
                this->long_integer = long_integer;
                this->float_number = float_number;
            }

        void print_output() {
            cout << this->integer << endl;
            cout << this->long_integer << endl;
            cout << this->character << endl;
            printf("%.3f\n", this->float_number);
            printf("%.9lf\n", this->double_number);
        }
};


int main() {
    // Complete the code.
    char character;
    double double_number;
    int integer;
    long long_integer;
    float float_number;

    scanf("%d %ld %c %f %lf", &integer, &long_integer,
        &character, &float_number, &double_number);

    Data infos(character, double_number,
        integer, long_integer, float_number), *info;

    info = &infos;

    info->print_output();

    return 0;
}
