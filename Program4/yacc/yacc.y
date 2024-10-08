%{
    #include<stdio.h>
    #include<stdlib.h>
    int cnt = 0;
%}

%token IF IDEN NUM

%%

S:I {printf("The number of levels is:%d \n",cnt);}  ;

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

B : '{' B B '}' 
  | I
  | E ';' 
  | 
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
