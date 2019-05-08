#!/bin/bash

#Firts practise

TEXT="Shell Scripting is Fun!"
HOSTNAME=$(hostname)
FILE="/etc/networks"

#Echo some output
echo "$TEXT"
echo "This script is running on" "$HOSTNAME"


#Check if a file exists
if [ -f "$FILE" ]
then
  echo "The file" "$FILE" "exists"
else
  echo "The file" "$FILE" "does not exist"
fi

#Check if a file is writable
if [ -w "$FILE" ]
then
  echo "The file" "$FILE" "is writable"
else
  echo "The file" "$FILE" "is not writable"
fi


#For loop
for WORD in man bear pig dog cat sheep
do
 echo "$WORD"
done

#Check user input
read -p "Enter the path to a file or a directory: " FILE

if [ -f "$FILE" ]
then
  echo "$FILE is a regular file."
elif [ -d "$FILE" ]
then
  echo "$FILE is a directory."
else
  echo "$FILE is something other than a regular file or directory."
fi

ls -l $FILE
