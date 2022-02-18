%{
    #include<stdio.h>
%}

%%
pin {printf("RULE-3\n"); REJECT;}
ink {printf("RULE-2\n"); REJECT;}
pink {printf("RULE-1\n"); REJECT;}
. {}
%%

int main(){
    yylex();
}