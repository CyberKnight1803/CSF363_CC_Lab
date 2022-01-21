/* 
    Lex program to count a's and b's in input string.
*/

%{
    #include<stdio.h>
    int numA = 0;
    int numB = 0;
%}

%%
a {numA++;}
b {numB++;}
\n {return 0;}
. {} // not print useless chars
%%

int main(){
    yylex();
    printf("count a: %d\n", numA);
    printf("count b: %d\n", numB);
}