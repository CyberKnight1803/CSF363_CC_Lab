%{
    #include<stdio.h>
%}

%%
[a-z]+ {
    printf("lower case\n");
    ECHO;
    printf("Begin yyterminate\n");
    yyterminate();                      // anything after this wont execute
    printf("End yyterminate\n");
}

[a-zA-Z]+ {
    printf("Mixed case\n");
}
%%

int main(){
    yylex();
    printf("Closing\n");
}