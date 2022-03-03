%{
    #include<stdio.h>
    int opResult;
%}

%token NUM;

%%
exp: NUM '+' NUM {$$ = $1 + $3; opResult = $$;} 
| NUM '-' NUM {$$ = $1 - $3; opResult = $$;}
| NUM '*' NUM {$$ = $1 * $3; opResult = $$;}
| NUM '/' NUM {$$ = $1 / $3; opResult = $$;};
%%

void yyerror(){
    printf("Invalid expression\n");
    exit(0);
}

void main(){
    printf("Expression: \n");
    yyparse();
    printf("Operation result: %d", opResult);
    exit(0);
}