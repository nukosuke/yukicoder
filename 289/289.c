#include <stdio.h>
#include <string.h>

int main(void) {
	char str[10000];
	scanf("%s", str);
	
	int i, ans;
	for(i=0, ans=0; i < strlen(str); i++) {
		if ('0' <= str[i] && str[i] <= '9') ans += str[i] - 48;
	}
	printf("%d", ans);
	return 0;
}
