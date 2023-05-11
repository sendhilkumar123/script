#!/bin/bash

# Prompt the user to enter the directory name
read -p "Enter the directory name: " dirname

# Check if the directory exists
if [ -d "$dirname" ]
then
    # If the directory exists, print a message
    echo "The directory '$dirname' already exists."
else
    # If the directory does not exist, create it and print a message
    mkdir "$dirname"
    echo "The directory '$dirname' has been created."
fi

