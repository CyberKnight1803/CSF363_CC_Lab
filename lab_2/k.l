%{
    #include<stdio.h>
    int numChars = 0;
    int whiteSpaces = 0;
    int tabs = 0;
%}

%%
[a-zA-Z] {numChars++;}
" " {whiteSpaces++;}
\n {return 0;}
%%

void main(){
    yyin = fopen("input.txt", "r");
    yylex();
    printf("Total characters: %d\n", numChars);
    printf("Total whitespaces: %d\n", whiteSpaces);
    printf("Total tabs: %d", tabs);
}
