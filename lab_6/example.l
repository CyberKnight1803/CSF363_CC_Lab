%{
    #include<stdio.h>
    #include "y.tab.h"
%}

%%
[a-z]+ return WORD;
[0-9]+ return NUM;
\n return yytext;
%%
