#!/bin/bash
# This is a bash script that renames files on a mounted GDrive in Linux from 'copy of' to the original name.
# You would need to do this when you make copies of files that you are moving from a different 
# Google SSO GDrive account to another. 
#
# In my case, I am moving all my GDrive files from my old free Google account to my paid 'Workspaces' 
# account, and this was the easiest way to migrate the files over, since Google doesnt let you do 
# this function.
#
# Written by Stefan Chex 11-Dec-2021
#
# Start the loop in the directory where you want to work on the files
#

for files in * ;do
#echo $files

# Create a new filename, that strips off the 'Copy of ' string on each filename. 
NEWNAME=$(echo $files | sed 's/Copy of //' )

# Create the original filename -- didnt actually need this. 
OLDNAME=$(echo $files | sed 's/ /\\ /g' )

# Note, you have to use the 'literal' function of the $files variable, so that the spaces in the 
# filename, end up being one long string, otherwise bash when it does the 'mv' command, breaks up 
# each charactetr section as separate values.

echo "$files"
echo $NEWNAME
mv -v "$files" $NEWNAME

done
