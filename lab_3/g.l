%{
    #include<stdio.h>
    int numWords = 0;
    int numLines = 0;
    int numChars = 0;
    int blackSpaces = 0;
%}

%%
[a-zA-Z]+ {numWords++; numChars += yyleng;}
" "|\t {blackSpaces++;}
\n {numLines++;}
. {}
%%

int main(){
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();

    fprintf(yyout, "Total Words : %d\n", numWords);
    fprintf(yyout, "Total chars : %d\n", numChars);
    fprintf(yyout, "Total Lines : %d\n", numLines + 1);
    fprintf(yyout, "Total whitespaces: %d", blackSpaces);
}