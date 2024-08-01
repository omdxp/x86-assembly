#include <stdio.h>

extern char my_asm();

int main(int argc, char **argv) {
  char c = my_asm();
  printf("%c\n", c);
  return 0;
}
