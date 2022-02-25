%{
    #include<stdio.h>
    int numChars = 0;
    int numWords = 0;
    int numLines = 1;

    void printStats(int numChars, int numWords, int numLines){
        printf("No. of characters: %d\n", numChars);
        printf("No. of Words: %d\n", numWords);
        printf("No. of Lines: %d\n", numLines);
    }

%}

%%
[a-zA-Z]+ {
    numChars += yyleng;
    numWords++;
}
\n {
    numLines++;
}

. {}
%%

int main(int argc, char **argv){
    if (argc != 3){
        printf("correct File args plz!");
        return 0;
    }

    yyin = fopen(argv[1], "r+");
    yylex();

    printStats(numChars, numWords, numLines);

    numChars = 0;
    numWords = 0;
    numLines = 1;

    FILE *fp = fopen(argv[2], "r+");
    yyrestart(fp);
    yylex();

    printStats(numChars, numWords, numLines);
}