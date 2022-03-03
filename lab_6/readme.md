## YACC Compiler

YACC : yet another compiler compiler

`file.y` => `y.tab.c`

```
Definitions

%%
 Rules
%%

Code
```

### Compilation Steps

* `yacc -d fileName.y`
* `flex fileName.y`
* `cc y.tab.c lex.yy.c -ll -ly`        -ly optional 

###
parser will have 2 stacks 
1. attribute stack
2. parser stack


`yylval` is of typ einteger and used for token number

X: A B C

attribute value of A B C are $1 $2 43 and so on
$$ is attribute value of X

