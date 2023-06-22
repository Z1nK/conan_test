#include "AdderD.h"

AdderD::AdderD(double numA, double numB) {
    a = numA;
    b = numB;
}

void AdderD::set_a(double numA) {
    a = numA;
}

void AdderD::set_b(double numB) {
    b = numB;
}

int AdderD::add() {
    return a + b;
}

