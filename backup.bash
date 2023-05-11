#!/bin/bash

# set the backup directory and name
backup_dir="/root/backup_folder"
backup_name="backup-$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

# set the directory to backup
source_dir="/root/sendhilkumar"

# create the backup directory if it doesn't exist
mkdir -p "$backup_dir"

# create the backup using tar
tar -czf "$backup_dir/$backup_name" "$source_dir"

# print a message to confirm the backup was created
echo "Backup created: $backup_dir/$backup_name"

echo "checking the script is excuted or not $?"
