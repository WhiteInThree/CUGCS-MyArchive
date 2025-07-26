/***********************************************************************
一些变量和数据结构的定义
本程序完全用标准的c写成，除了用到了c++中string 类，其他都没有用
所以我想这个程序是可以在不同平台上运行的
***********************************************************************/
#ifndef _GLOBAL_H
#define _GLOBAL_H

#include <stdio.h>
#include <ctype.h>
#include <string>
using namespace std;

# define  MAX 6 //分析表的最大容量
#define   MAXBUF 255

char  ch =' ';// 存放读入当前的输入字符
int lineno;//程序行数
struct entry{
			  const	char *lexptr;
				int token;
			};//关键字表中的结构

 struct entry symtable[MAX];//分析表
static string  str[] = { "if","then","else","program","begin","end"};//关键字

#endif