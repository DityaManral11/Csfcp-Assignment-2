#!/bin/bash
# Script Name: backup.sh
# Purpose: Create a backup of a directory with a timestamp
# Author: Ditya Manral
# Date: 13-11-2025

# Folder to backup
SOURCE_DIR="/home/user/mydata"

# Backup location
BACKUP_DIR="/home/user/backups"

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

# Generate timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Final backup path
DEST="$BACKUP_DIR/backup_$TIMESTAMP"

# Copy directory
cp -r "$SOURCE_DIR" "$DEST"

echo "Backup created at $DEST"
