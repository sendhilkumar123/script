#!/bin/bash

dir=" /root/scripting "

if [ -d "$dir" ]; then
  echo "Directory exists."
else
  echo "Directory does not exist."
fi
