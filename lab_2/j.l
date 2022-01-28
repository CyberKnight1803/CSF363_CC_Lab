%{
    #include<stdio.h>
    #include<stdlib.h>

    int number;    
%}

%%
0|([1-9][0-9]*) { number = atoi(yytext); return 0;}
%%

int main(){
    yylex();
    printf("%d", number);
}