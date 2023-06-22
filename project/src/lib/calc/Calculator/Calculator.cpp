#include "Calculator.h"

Calculator::Calculator(int numA, int numB) : adder(numA, numB), multiplier(numA, numB) {
}

int Calculator::add() {
    return adder.add();
}

int Calculator::multiply() {
    return multiplier.multiply();
}