#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int int_sort(const void *a, const void *b) {
  return *(int *)a - *(int *)b;
}

int main() {
  int N, *X;
  char *line;

  scanf("%d\n", &N);
  X = (int *)malloc(sizeof(int) * N);

  int length = 6*N + N+1;
  line = (char *)malloc(sizeof(char) * length);
  fgets(line, length, stdin);

  char *delim = " \n";
  char *tok;
  int i = 0;

  tok = strtok(line, delim);
  while(tok != NULL) {
    X[i] = atoi(tok);
    tok = strtok(NULL, delim);
    i++;
  }
  free(line);

  qsort(X, N, sizeof(int), int_sort);

  int answer = 1000001;
  for (i = 0; i < N-1; i++) {
    if (X[i] == X[i+1]) continue;
    int dist = X[i+1] - X[i];
    answer = dist < answer ? dist : answer;
  }

  if (answer == 1000001) answer = 0;
  printf("%d\n", answer);
  free(X);
  return 0;
}
