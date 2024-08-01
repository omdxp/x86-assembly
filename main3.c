#include <stdio.h>

extern int my_asm(int *p);

int main(int argc, char **argv) {
  int a = 50;
  int *ptr = &a;

  printf("%d\n", my_asm(ptr));
  return 0;
}
