#ifndef CALCULATOR_H
#define CALCULATOR_H

#include <dep1/Adder/Adder.h>
#include <dep2/Multiplier/Multiplier.h>

class Calculator {
private:
    Adder adder;
    Multiplier multiplier;

public:
    Calculator(int numA, int numB);
    int add();
    int multiply();
};

#endif  // CALCULATOR_H