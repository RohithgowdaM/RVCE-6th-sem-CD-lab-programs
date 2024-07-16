%{
	#include<stdio.h>
	int single=0,multi=0,mlines=1;
%}
%%
"//"[^\n]*	{single++;}
"/*"[^*#]*"*/"	{
	multi++;
	for(int i=0;i<yyleng;i++)
	{
		if(yytext[i]=='\n')
			mlines++;
	}
	}
# return 0;
%%
int yywrap()
{
	return 1;
}
int main()
{
	printf("Enter the code\n");
	yylex();
	printf("Single: %d\n Multi: %d\nMlines: %d\n",single,multi,mlines);
	return 0;
}
