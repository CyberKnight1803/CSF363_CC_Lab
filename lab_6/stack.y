%{
    #include<stdio.h>
%}

%token NUM

%%
S: val {return 1;}
val: NUM {$$ = $1;}
%%


void yyerror(){
    printf("Invalid statement\n");
    exit(0);
}

void main(){
    printf("Enter the number:\n");
    yyparse();
    printf("Value is: %d", yylval);
    exit(0);
}