# FLEX 
FLEX is a tool/computer program for generating lexical analyzers.

## Basic steps
1. Input file `lex.l` when compiled by lex compiler creates `lex.yy.c`
2. The C compiler compiles `lex.yy.c` file into an executable file `a.out` via command `cc lex.yy.c -ll`
3. The output file `a.out` take a stream of input characters and produce a stream of tokens.

## Program structure
The input file has 3 sections  - 

1. Definition section 
2. Rules section
3. User Code section
   
### 1. Definition Section
```
%{
    // Definitions
%}
```

Anything written in this section is copied directly in `lex.yy.c` file

### 2. Rules Section
```
%%
// rules section
%%
```
Regex is used in this section for patterns. A+ction begins on same line in {} brackets

### 3. User Code Section
```
%{
    // Definitions
%}

%%
// rules section
%%

// User Code section

```

### Final Lex Code Structure 

```
// Definition section
%{
    // Definitions C language.
%}

// Definitions (lexemes) here

// Rules section
%%
// Regex {action} 
%%

int main(){
    yylex();
    // Logic here
}

```