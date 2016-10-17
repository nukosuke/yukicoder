#include <iostream>
#include <algorithm>
#include <cstdio>

int main(void) {
  using namespace std;

  int S[6];

  for (int i = 0; i < 6; i++) cin >> S[i];

  sort(S, S+6);

  int sum = 0;
  for (int i = 1; i < 5; i++) sum += S[i];

  printf("%.2f\n", double(sum)/4);
  return 0;
}
