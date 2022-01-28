/* 
Write a lex program to validate strings belong to ab*
*/

%%
^ab*$ printf("Valid!!");
.* printf("Invalid!!");
%%

int main(){
    yylex();
    return 0;
}