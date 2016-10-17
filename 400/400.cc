#include <iostream>
#include <string>
#include <algorithm>

int main(void) {
  using namespace std;
  string S;
  cin >> S;

  reverse(S.begin(), S.end());
  for (auto it = S.begin(); it != S.end(); it++) *it = (*it == '>') ? '<' : '>';

  cout << S << endl;
  return 0;
}
