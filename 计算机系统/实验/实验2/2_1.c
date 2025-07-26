#include<stdio.h>
void main()
{
  int ai = 100, bi = 2147483648, ci = -100;
  unsigned au = 100, bu = 2147483648, cu = -100;
  printf("ai = % d, bi = % d, ci = % d\n", ai, bi, ci);
  printf("au = % u, bu = % u, cu = % u\n", au, bu, cu);
}

