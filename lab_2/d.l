/* 
    Check if input is a number or a word
*/

%%
^[0-9]+$ printf("Number!");
^[a-zA-Z]+$ printf("Word!");
.* printf("Invalid");
%%

int main(){
    yylex();
}