/* 
    Detect number using a predefined lexeme 
*/

number [0-9]+

%%
{number} {printf("Valid Number!");}
%%

int main(){
    yylex();
}