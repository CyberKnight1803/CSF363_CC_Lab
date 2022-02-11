%{
    #include<stdio.h>  
%}

%%
" "+ {fprintf(yyout, "%s", " ");}
.\\n {fprintf(yyout, "%s", yytext);}
%%

int main(){
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();
}