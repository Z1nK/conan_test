#ifndef ADDER_H
#define ADDER_H

class Adder {
private:
    int a;
    int b;

public:
    Adder(int numA, int numB);
    int add();

    void set_a(int numA);
    void set_b(int numB);

    int get_a();
    int get_b();

};

#endif  // ADDER_H