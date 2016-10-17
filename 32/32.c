#include <stdio.h>

int main(void) {
  int L, M, N;

  scanf("%d", &L);
  scanf("%d", &M);
  scanf("%d", &N);

  int sum  = L * 100 + M * 25 + N;
  int coin = 0;

  sum %= 1000;

  coin += sum / 100;
  sum %= 100;

  coin += sum / 25;
  sum %= 25;

  coin += sum;

  printf("%d\n", coin);
  return 0;
}
