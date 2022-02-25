%{
    #include<stdio.h>
    #include<math.h>
%}

%x expect

%%
expect-floats {BEGIN(expect);}
<expect>[0-9]+"."[0-9]+ {
    printf("Float: %f", atof(yytext));
}
"abc" { printf("Ok Good"); }
%%

int main(){
    yylex();
}