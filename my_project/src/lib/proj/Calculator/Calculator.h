#ifndef CALCULATOR_H
#define CALCULATOR_H

#include <dep1/Adder/Adder.h>

class Calculator {
private:
    Adder adder;

public:
    Calculator(int numA, int numB);
    int calculate();
};

#endif  // CALCULATOR_H