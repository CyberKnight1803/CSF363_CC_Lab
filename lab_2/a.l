/* 

*/

%{
    #include<stdio.h>
%}

letter [a-zA-Z]
digit [0-9]

%%
^{letter}+{digit}$ printf("Hello");
.* printf("Invalid");
%%

int main(){
    yylex();
    return 0;
}