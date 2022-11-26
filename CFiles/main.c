#include <stdio.h>

int main() {
    extern double getPi(double pi);
    double pi = 3.0;
    printf("Result: %.14f", getPi(pi));
}
