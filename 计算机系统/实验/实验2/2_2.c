#include<stdio.h>
int main()
{
	int i1 = 0x7fffffff, i2, itemp;
	float f1 = 0x987654321, f2, ftemp;
	ftemp = i1;
	i2 = ftemp;
	itemp = f1;
	itemp = f1;
	f2 = itemp;
	printf("i1 = % d, i2 = % d, f1 = % f, f2 = % f\n", i1, i2, f1, f2);
}
