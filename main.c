#include <stdio.h>

// _my_asm: exported symbols in C are proceeded with underscore
extern int my_asm(int x, int y);

int main(int argc, char **argv) {
  int res = my_asm(1, 2);
  printf("%d\n", res);
  return 0;
}
