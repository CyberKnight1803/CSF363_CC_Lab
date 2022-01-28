%{
    #include<stdio.h>
%}

%%
ab* fprintf(yyout, "%s", yytext);
%%

int main(){
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();
}