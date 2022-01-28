integer (0|([1-9][0-9]*))

%%
{integer}\.[0-9]+ {printf("Float");}

{integer} {printf("Integer");}
.* {printf("Invalid");}
%%

int main(){
    yylex();
}