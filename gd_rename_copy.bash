#!/bin/bash
#FILE="input_file.txt"
#LINES=$(cat $FILE)
#for NAME in $FILE;do

for files in * ;do
#echo $files

NEWNAME=$(echo $files | sed 's/Copy of //' )
OLDNAME=$(echo $files | sed 's/ /\\ /g' )
echo "$files"
echo $NEWNAME
mv -v "$files" $NEWNAME

#  NEWNAME=$(echo $files | sed '/s/Copy Of //')
#  echo $NEWNAME

done
