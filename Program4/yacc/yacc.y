%{
    #include<stdio.h>
    #include<stdlib.h>

    int cnt = 0;            // Tracks the total number of `if` statements
    int currentDepth = 0;    // Tracks the current nesting depth
%}

%token IF IDEN NUM

%%

S : J
  ;

J:J I
|
;

I : IF A B {
        cnt++;
    }
  ;

A : '(' E ')'
  ;

E : IDEN Z E
  | IDEN
  | NUM
  ;

Z : '='
  | '<'
  | '>'
  | '<''='
  | '>''='
  | '=''='
  | '+'
  | '-'
  ;

B : '{' B '}'
  | I
  | E ';'
  | /* empty */
  ;

%%

int main() {
    printf("Enter the snippet:\n");
    yyparse();
    printf("Total count of `if` statements: %d\n", cnt);
    return 0;
}

int yyerror() {
    printf("Invalid\n");
    exit(0);
}
