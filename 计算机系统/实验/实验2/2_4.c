# include<stdio.h>
int bitAnd(int x, int y) {
	return ~(~x | ~y);
}

void main() {
	int ans = bitAnd(6, 5);
	printf("%d\n", ans);
}
