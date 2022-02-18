%{
    #include<stdio.h>
    int activeLineNumber = 1;
    int totalEmptyLines = 0;
%}

%%
^\n {totalEmptyLines++;}
\n {}
.* {
    fprintf(yyout, "%d\t", activeLineNumber);
    fprintf(yyout, "%s\n", yytext);
    activeLineNumber++;
}
%%

int main(){
    yyin = fopen("io/i1.txt", "r");
    yyout = fopen("io/output.txt", "w");

    yylex();
    fprintf(yyout, "\nNumber of empty lines:%d", totalEmptyLines);
}