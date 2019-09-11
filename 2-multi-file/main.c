#include <stdio.h>
#include "calculator.h"

// int add(int a, int b) {
//   return -2;
// }

// clang and nm and libtool

// clang -c calculator.c
// clang -c main.c
// clang main.o calculator.o


// summary
// clang file.c -> executable
// clang -c file.c -> object file | compilation
// clang a.o b.o c.o | linking
// static library: libtool -static a.o b.o c.o -o libkuda.a
// static library: libtool -dynamic a.o b.o c.o -o libkuda.dylib
// clang -lkuda -L /path/to/libkuda.a x.o y.o
// clang -I // includea header
// ld main.o -L . -lSystem -lCalculatorDynamic

int main() {
  printf("30 + 70 = %d\n", add(30, 70));
  return 0;
}