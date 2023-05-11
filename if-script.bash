#!/bin/bash

# set the number of files to create
num_files=5

# create a loop to create files
for i in $(seq 1 $num_files); do
  touch "file$i.txt"
done

echo "Files created successfully!"
