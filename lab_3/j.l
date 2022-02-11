%{
    #include<stdio.h>  
    int numCount = 0;
%}

%%
[" "^][aeiouAEIOU][a-z]* {++numCount; fprintf(yyout, "%s", yytext);}
. {fprintf(yyout, "%s", yytext);}
%%

int main(){
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();

    fprintf(yyout, "\nTotal vowel-words: %d", numCount);
}