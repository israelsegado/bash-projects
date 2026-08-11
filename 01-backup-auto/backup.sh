#! /bin/bash

#declaration of the variables with the path
FILE_ORIGIN="$(pwd)"
BACKUP_DIR="$FILE_ORIGIN/../backup_registry"

mkdir -p -v "$BACKUP_DIR" #creation of the backup directory

date=$(date +"%Y-%m-%d_%H-%M-%S") #date of the backup

tar -czf "$BACKUP_DIR/backup_$date.tar.gz" "$FILE_ORIGIN" #creation of the backup file

echo "Backup created successfully at "$BACKUP_DIR"/backup_$date.tar.gz"