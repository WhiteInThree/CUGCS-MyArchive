/***********************************************************************
һЩ���������ݽṹ�Ķ���
��������ȫ�ñ�׼��cд�ɣ������õ���c++��string �࣬������û����
����������������ǿ����ڲ�ͬƽ̨�����е�
***********************************************************************/
#ifndef _GLOBAL_H
#define _GLOBAL_H

#include <stdio.h>
#include <ctype.h>
#include <string>
using namespace std;

# define  MAX 6 //��������������
#define   MAXBUF 255

char  ch =' ';// ��Ŷ��뵱ǰ�������ַ�
int lineno;//��������
struct entry{
			  const	char *lexptr;
				int token;
			};//�ؼ��ֱ��еĽṹ

 struct entry symtable[MAX];//������
static string  str[] = { "if","then","else","program","begin","end"};//�ؼ���

#endif