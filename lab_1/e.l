/* 
    Lex program to count vowels 
*/

%{
    #include<stdio.h>
    int numVowel = 0;
%}

vowels [aeiou]

%%
{vowels} {numVowel++;}
\n {return 0;}
. {}
%%

int main(){
    yylex();
    printf("Vowel count: %d", numVowel);
}