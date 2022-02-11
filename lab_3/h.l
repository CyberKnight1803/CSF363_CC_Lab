%{
    #include<stdio.h>  
%}

%%
CS {fprintf(yyout, "%s", "Computer Science");}
.|\n {fprintf(yyout, "%s", yytext);}
%%

int main(){
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();
}