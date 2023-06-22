#include "Calculator.h"

Calculator::Calculator(int numA, int numB) : adder(numA, numB) {
}

int Calculator::calculate() {
    return adder.add();
}
