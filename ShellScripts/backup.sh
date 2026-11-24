#!/bin/bash
# Author: Lakshika Dhasmana
# Roll No: 2601730342
# Purpose: Create a compressed folder backup

if [ "$#" -ne 1 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE="$1"

if [ ! -d "$SOURCE" ]; then
    echo "Error: Folder does not exist: $SOURCE"
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR" || exit 1

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
FILENAME="backup_${TIMESTAMP}.tar.gz"
ARCHIVE="$BACKUP_DIR/$FILENAME"

if tar -czf "$ARCHIVE" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"; then
    SIZE=$(du -h "$ARCHIVE" | cut -f1)
    echo "Backup successful: $FILENAME (Size: $SIZE)"
    echo "$(date '+%Y-%m-%d %H:%M:%S') SUCCESS $FILENAME Size=$SIZE" >> "$BACKUP_DIR/backup.log"
else
    echo "Error: Backup failed."
    echo "$(date '+%Y-%m-%d %H:%M:%S') FAILED $FILENAME" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
