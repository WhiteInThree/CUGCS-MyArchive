# include<stdio.h>
int isLessOrEqual(int a, int b) {
	int diff = a ^ b;
	if (!diff) return 1; //a = b 

	// 001xxxxx -> 00100000
	diff |= diff >> 1;
	diff |= diff >> 2;
	diff |= diff >> 4;
	diff |= diff >> 8;
	diff |= diff >> 16;
	diff ^= diff >> 1;

	if (!(a & diff))
		return 1; //a < b
	else
		return 0; //a > b
}
void main() {
	int ans = isLessOrEqual(4, 5);
	printf("%d\n", ans);
}
