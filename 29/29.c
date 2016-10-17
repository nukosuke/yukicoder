#include <stdio.h>

int main(void) {
  int item[10] = {0,0,0,0,0,0,0,0,0,0};
  int lv = 0;

  int N;
  scanf("%d", &N);

  int a, b, c;
  int i;
  for (i = 0; i < N; i++) {
    scanf("%d %d %d", &a, &b, &c);
    item[a-1]++;
    item[b-1]++;
    item[c-1]++;
  }

  for (i = 0; i < 10; i++) {
    lv += item[i] / 2;
    item[i] %= 2;
  }

  int rest = 0;
  for (i = 0; i < 10; i++) {
    rest += item[i];
  }
  lv += rest / 4;

  printf("%d\n", lv);

  return 0;
}
