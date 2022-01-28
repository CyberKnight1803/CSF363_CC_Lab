## yytext
* `yytext` is a type of char *
* It contains the lexeme currently found.
* Each invocation of the function `yylex` results in `yytext` carrying a pointer to the lexeme found in the input stream by `yylex`
* The value of `yytext` will be overwritten after the nmext `yylex` incovation.
  
## yyleng
* `yyleng` is a variable of type int and it stores the length of the lexeme pointed to by `yytext`

## yyin
* `yyin` is a variable of type FILE* and points to the input file.