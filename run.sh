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
cc lex.yy.c -ll -o "executables/$FILE_NAME.out"
./executables/$FILE_NAME.out