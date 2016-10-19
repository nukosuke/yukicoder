#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
  char text[1026];
  int i;

  fgets(text, 1026, stdin);
  for(i=0; i<strlen(text)-1; i++) text[i] = 'A' + (text[i] - 'A' + 2600 + 26 - (i + 1)) % 26;
  printf("%s\n", text);
  return 0;
}
