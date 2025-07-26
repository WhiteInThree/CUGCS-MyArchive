#include <stdio.h>
#include <stdlib.h>

int main()
{
  int a=2021,b=191;
  printf ("交换前: a=%d， b=%d\n",a,b);
 
  a = a^b;
  b = b^a;//b=b^(a^b)=a
  a = a^b;//a=(a^b)^a=b
  printf("交换后: a=%d, b=%d\n",a,b);
}
