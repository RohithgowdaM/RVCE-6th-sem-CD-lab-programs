%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int variable_count = 0;

void yyerror(const char *s);
%}

%union {
    char *str;
}

%token <str> IDENTIFIER
%token INT FLOAT CHAR DOUBLE COMMA SEMICOLON LBRACKET RBRACKET NUMBER

%%

program:
    declarations
    ;

declarations:
    declaration SEMICOLON { printf("Total number of variables declared: %d\n", variable_count); }
    ;

declaration:
    type var_list
    ;

type:
    INT
    | FLOAT
    | CHAR
    | DOUBLE
    ;

var_list:
    var { variable_count++; }
    | var_list COMMA var { variable_count++; }
    ;

var:
    IDENTIFIER
    | IDENTIFIER LBRACKET NUMBER RBRACKET
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyparse();
    return 0;
}
