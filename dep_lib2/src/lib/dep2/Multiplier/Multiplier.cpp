#include "Multiplier.h"

// TODO fix multiply algorithm
Multiplier::Multiplier(int numA, int numB) : adder(numA, numB) {
}

int Multiplier::multiply() {
    int result = 0;
    for (int i = 0; i < adder.add(); ++i) {
        result = adder.add();
    }
    return result;
}

