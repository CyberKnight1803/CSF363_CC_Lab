%{
    #include<stdio.h>
    int total_numbers = 0;
    int numWords = 0;
%}

%%
[0-9] {total_numbers++;}
[a-zA-Z]+   {numWords++;}
<<EOF>> {return 0;}
. {}
%%

int main(){
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();

    fprintf(yyout, "Total Words %d\n", numWords);
    fprintf(yyout, "Total numbers %d\n", total_numbers);
}