%{
    #include<stdio.h>
%}

%token NUM WORD


%%
sentence: s ;
s: WORDS NUM ;
WORDS: WORD WORDS | WORD;
%%

void yyerror(){
    printf("Invalid statement\n");
    exit(0);
}

void main(){
    printf("Enter a Sentence:\n");
    yyparse();
    printf("Valid statement: \n");
    exit(0);
}