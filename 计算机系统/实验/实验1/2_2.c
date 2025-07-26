#include<stdio.h>
void main()
{
 float sum1 = 0;
 float sum2 =0;
 float c = 0;
 float y, t;
 int i;
 for (i=0;i<4000000;i++)
  sum1+=0.1;

 for( i=0;i<4000000;i++)
 {
  y=0.1-c;
  t=sum2+y;
  c = (t-sum2) -y;
  sum2 = t;
 }
 
 printf ("sum1=%f\n" , sum1) ;
 printf ("sum2=%f\n" , sum2) ;
}

