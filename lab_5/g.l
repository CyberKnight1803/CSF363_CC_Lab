%{
    #include<stdio.h>
    char buffer[100];
    char *s;
%}

%x STRING

%%
\" { 
    BEGIN(STRING);
    s = buffer;
}

<STRING>\\n { *s++ = '\n'; }

<STRING>\\t {*s++ = '\t'; }

<STRING>\\\" {*s++ = '\"'; }

<STRING>\" {
    *s = 0;
    BEGIN(INITIAL);
    printf("Found: %s", buffer);
}

<STRING>\n { printf("Invalid string"); exit(1); }

<STRING>. {*s++ = *yytext; }

%%

int main(){
    yylex();
}