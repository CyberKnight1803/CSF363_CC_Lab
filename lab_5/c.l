%{
    #include<stdio.h>
%}

%%
\" { 
    while(input() != '"');
}

"un" {
    printf("\nUnput char = un");
}

[a-z]+ {
    printf("Token = ");
    ECHO;

    unput('n');
    unput('u');

    printf("\nToken after unput = ");
    ECHO;
}
%%

int main(){
    yylex();
}