#include <stdio.h>
#include <string.h>

int main() {
  char n[50+2];
  scanf("%s", n);
  if (!strcmp(n, "ham")) printf("%s\n", n);
  else printf("%sham\n", n);
  return 0;
}
