#!/bin/bash

# Prompt the user to enter the filename
read -p "Enter the filename: " filename

# Check if the file exists
if [ -f "$filename" ]
then
    # If the file exists, delete the last three lines using sed
    sed -i '$d' "$filename"
    sed -i '$d' "$filename"
    sed -i '$d' "$filename"
    echo "The last three lines of the file '$filename' have been deleted."
else
    # If the file does not exist, print an error message
    echo "The file '$filename' does not exist."
fi

