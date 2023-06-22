#include <iostream>
#include <proj/Calculator/Calculator.h>

int main() {
    int numA, numB;
    std::cout << "Enter the first number: ";
    std::cin >> numA;
    std::cout << "Enter the second number: ";
    std::cin >> numB;

    Calculator calculator(numA, numB);
    int result = calculator.calculate();

    std::cout << "The result of the calculation is: " << result << std::endl;

    return 0;
}