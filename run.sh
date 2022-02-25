#!/bin/bash

filePath=$1
FILE_NAME="$(basename $filePath)"

# Check if folder exists
if [ ! -d "./executables" ]
then 
    mkdir executables
fi

# RUN
lex $filePath
cc lex.yy.c -ll -lm -o "executables/$FILE_NAME.out"

if [ $# -ne 1 ]
then 
    ./executables/$FILE_NAME.out ${@:2}
else 
    ./executables/$FILE_NAME.out 
fi 
