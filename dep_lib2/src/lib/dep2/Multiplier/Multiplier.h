#ifndef MULTIPLIER_H
#define MULTIPLIER_H

#include <dep1/Adder/Adder.h>

class Multiplier {
private:
    Adder adder;

public:
    Multiplier(int numA, int numB);
    int multiply();
};

#endif  // MULTIPLIER_H
