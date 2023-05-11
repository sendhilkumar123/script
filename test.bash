#!/bin/bash

dir_name="/root/to/test "

if [ -d "$dir_name" ]; then
  echo "test $dir_name exists."
else
  echo "test $dir_name does not exist."
fi
