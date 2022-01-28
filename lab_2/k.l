%{
    #include<stdio.h>
    int numChars = 0;
    int numSpaces = 0;
    int numTabs = 0;
%}

%%
[a-zA-z]* {numChars++; return 0;}
\n {return 0;}
%%

int main(){
    yyin = fopen("input.txt", "r");
    printf("Total characters: %d\n", numChars);
    printf("Total white spaces: %d\n", numSpaces);
    printf("Total tabs: %d", numTabs);
    yylex();
}