%{
    #include<stdio.h>
%}

%%
username {fprintf(yyout, "%s", getlogin());}
%%

int main(){
    yyin = fopen("io/i1.txt", "r");
    yyout = fopen("io/output.txt", "w");
    yylex();
}