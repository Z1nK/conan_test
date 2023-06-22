#include <iostream>
#include <calc/Calculator/Calculator.h>

int main() {
    int numA, numB;
    std::cout << "Enter the first number: ";
    std::cin >> numA;
    std::cout << "Enter the second number: ";
    std::cin >> numB;

    Calculator calculator(numA, numB);
    int sum = calculator.add();
    std::cout << "The sum of " << numA << " and " << numB << " is: " << sum << std::endl;

    int product = calculator.multiply();
    std::cout << "The product of " << numA << " and " << numB << " is: " << product << std::endl;

    return 0;
}