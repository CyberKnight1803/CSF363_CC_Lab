%{
    #include<stdio.h>
    int sum;
%}

%token NUM

%%
expr: ex;

ex: NUM '+' NUM {$$ = $1 + $3; sum = $$; printf("Sum is: %d\n", sum); }
%%

void yyerror(){
    printf("Invalid statement\n");
    exit(0);
}

void main(){
    printf("Enter: \n");
    yyparse();
    printf("Addition result is : %d", sum);
    exit(0);
}