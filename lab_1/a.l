/* 
    A simmple LA to accept begin and you 
*/

%%
begin printf("Hello");
you printf("World");
%%

int main(){
    yylex();
}