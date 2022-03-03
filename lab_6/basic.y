%{
    #include<stdio.h>
%}

%token A B

%%
S: A E B;
E: A E B | ;
%%

void yyerror(){
    printf("Wrong language\n");
    exit(0);
}

void main(){
    printf("Enter string: \n");
    yyparse();
    printf("Valid string");
    exit(0);
}