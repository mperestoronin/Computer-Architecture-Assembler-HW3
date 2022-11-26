#include <stdio.h>

double getPi(double pi) {
    for (double i = 2.0; i < 3000000; i += 4) {
        pi += 4.0 / (i * (i + 1) * (i + 2));
        pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
    }
    return pi;
}
