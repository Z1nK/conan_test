#ifndef ADDERD_H
#define ADDERD_H

class AdderD {
private:
    double a;
    double b;

public:
    AdderD(double numA, double numB);
    int add();

    void set_a(double numA);
    void set_b(double numB);

};

#endif  // ADDERD_H