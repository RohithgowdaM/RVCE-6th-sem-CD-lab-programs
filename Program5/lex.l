%{
#include "y.tab.h"
%}

%%

"int"     { return INT; }
"float"   { return FLOAT; }
"char"    { return CHAR; }
"double"  { return DOUBLE; }
","       { return COMMA; }
";"       { return SEMICOLON; }
"["       { return LBRACKET; }
"]"       { return RBRACKET; }

[a-zA-Z_][a-zA-Z0-9_]*  { yylval.str = strdup(yytext); return IDENTIFIER; }
[0-9]+    { return NUMBER; }
[ \t\n]+  { /* skip whitespace */ }

%%

int yywrap() {
    return 1;
}
