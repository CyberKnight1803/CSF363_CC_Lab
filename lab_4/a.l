%{
    #include<stdio.h>
%}

%%
[a-z]{-}[aeiou] {printf("Consonent\n");}
. {}
%%

int main(){
    yylex();
}