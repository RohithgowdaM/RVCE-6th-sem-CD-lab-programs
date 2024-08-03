%{
	#include "y.tab.h"
%}
%%
"for" return FOR;
[a-zA-Z_][a-zA-Z0-9_]* return IDEN;
[0-9]+ return NUM;
[\n\t ]  ;
# {return 0;}
.   {return yytext[0];}
%%

int yywrap() {
    return 1;
}