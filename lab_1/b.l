/* 
    Lex program to accept language ab*
*/


%%
^ab*$ printf("Valid string");
. {printf("Invalid string"); return 0;}
%%

int main(){
    yylex();
}
