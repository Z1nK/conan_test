#include "Multiplier.h"

Multiplier::Multiplier(int numA, int numB) : adder(numA, numB) {
}

int Multiplier::multiply() {
    int result = 0;
    int until = adder.get_b();
    int number = adder.get_a();
    for (int i = 0; i < until; ++i) {
        result = result + number;        
    }
    return result;
}

