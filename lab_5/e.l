%{
    #include<stdio.h>
    #include<math.h>
%}

%s expect

%%
expect-floats { BEGIN(expect); }

<expect>[0-9]+"."[0-9]+ {
    printf("Float: %f\n", atof(yytext));
}

<expect>\n { BEGIN(INITIAL); }

[0-9]+ {
    printf("Integer: %d\n", atoi(yytext));
}

"." printf("Found a dot!\n");

. {}
%%

int main(){
    yylex();
}