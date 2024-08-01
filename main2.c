#include <stdio.h>

struct test {
  int a;
  char b;
  char c;
};

extern struct test my_asm();

int main(int argc, char **argv) {
  struct test a = my_asm();
  printf("%i %c %c", a.a, a.b, a.c);
  return 0;
}
