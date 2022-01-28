%%
stop {return 0;}
start {return 0;}
%%

int main(){
    yylex();
    printf("%s\n", yytext);
    printf("%d", yyleng);
}