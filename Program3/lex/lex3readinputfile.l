%{
    #include <stdio.h>
    #include <string.h>

    int single = 0, multi = 0, mlines = 1;
    FILE *outfile;
%}

%option noyywrap

%%
"//"[^\n]*    { single++; }  // Single-line comment counting
"/*"([^*]*\*+)*([^*/][^*]*\*+)*"/" {
                        multi++;
                        for(int i = 0; i < yyleng; i++) {
                            if(yytext[i] == '\n')
                                mlines++;
                        }
                    } // Multi-line comment counting and line counting
[^{"/""/"}\*/]          { fputs(yytext, outfile); } // Copy non-comment text to the output file

.|\n    { fputs(yytext, outfile); } // Copy all other characters to the output file
%%

int main() {
    char input_file[100];

    printf("Enter the input C file name: ");
    scanf("%s", input_file);

    FILE *infile = fopen(input_file, "r");
    if (!infile) {
        printf("Could not open input file.\n");
        return 1;
    }

    outfile = fopen("output.c", "w");
    if (!outfile) {
        printf("Could not open output file.\n");
        fclose(infile);
        return 1;
    }

    yyin = infile;

    yylex();

    fclose(infile);
    fclose(outfile);

    printf("Single-line comments: %d\n", single);
    printf("Multi-line comments: %d\n", multi);
    printf("Lines in multi-line comments: %d\n", mlines);

    return 0;
}
