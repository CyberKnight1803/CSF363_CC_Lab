%{
    #include<stdio.h>
%}

%%
[a-zA-Z \t][a-zA-Z]* fprintf(yyout, "%s", yytext);
[0-9]*
[#$%?] 
%%

int main(){
    yyin = fopen("input.txt", "r");
    // yyout = fopen("output.txt", "w");
    yylex();
}