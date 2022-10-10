#!/bin/sh
# Author: Manique

if [ $# -lt 2 ]
then
    echo "finder.sh must have 2 args: finder.sh <file_dir> <searstr>"
    exit 1
else
    filesdir=$1
    searchstr=$2
fi

if [ -d $filesdir ]
then
    echo "The number of files are $(find $filesdir -type f | wc -l) and the number of matching lines are $(grep -r -s $searchstr $filesdir | wc -l)"
    exit 0
else
    echo "<file_dir> must be a valid directory path"
    exit 1
fi
