%{
    #include<stdio.h>
%}

%%
[a-z]+ { 
    printf("\nLower case token = ");
    ECHO;
    return 0; 
}

[a-zA-Z]+ {
    ECHO;
}

%%

int main(){
    yylex();
    printf("\n End of 1st lex operation");

    FILE *fp = fopen("io/i1.txt", "r+");
    printf("\n Begin 2nd lex operation");
    yyrestart(fp);

    yylex();
    printf("\nEnd of 2nd lex operation");
}