%{
    #include<stdio.h>  
    int numCount = 0;
%}

%%
(The" ")|(the" ") {++numCount; fprintf(yyout, "%s", yytext); fprintf(yyout, "%d ", numCount);}
.|\n {fprintf(yyout, "%s", yytext);}
%%

int main(){
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();
}