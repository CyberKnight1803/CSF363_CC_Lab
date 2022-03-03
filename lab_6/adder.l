%{
    #include<stdlib.h>
    #include "y.tab.h"

    extern int yylval;
%}

%%
[0-9]+ {yylval = atoi(yytext); return NUM;}
"+" return *yytext;
\n return 0;
%%