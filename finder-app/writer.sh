#!/bin/sh
# Author: Manique
# writer.sh <writefile> <writestr>

if [ $# -ne 2 ]
then
    echo "one of the inputs not inserted!"
    echo "must use: writer.sh <filename_path> <content>"
    exit 1
fi

if [ -d $1 ]
then
    echo $2 > $1
else
    mkdir -p $( dirname $1)
    if [ $? -ne 0 ]
    then
        echo "file could not be created"
        exit 1
    else
        echo $2 > $1
    fi
fi

exit 0

