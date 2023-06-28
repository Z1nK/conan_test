#include "Adder.h"

Adder::Adder(int numA, int numB) {
    a = numA;
    b = numB;
}

void Adder::set_a(int numA) {
    a = numA;
}

void Adder::set_b(int numB) {
    b = numB;
}

int Adder::get_a() {
    return a;
}

int Adder::get_b() {
    return b;
}

int Adder::add() {
    return a + b;
}

