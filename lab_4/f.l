%{
    #include<stdio.h>
    #include<string.h>

    int numLength = 0;
    char S[1000];

    void bigString(char *A, char *B){
        if (strlen(A) < strlen(B))
            strcpy(S, B);
    }

%}

%%
\n {}
[a-zA-Z]+ {
    bigString(S, yytext);
    numLength = strlen(S);
}
. {}
%%

int main(){
    yyin = fopen("io/i1.txt", "r");
    yyout = fopen("io/output.txt", "w");
    yylex();

    printf("Longest string: %s\n", S);
    printf("Length: %d", numLength);
}