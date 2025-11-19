#!/bin/bash
# Script Name: download.sh
# Purpose: Download a file automatically using wget
# Author: Ditya Manral
# Date: 13-11-2025

URL="https://example.com/sample.zip"
DEST="/home/user/Downloads"

mkdir -p "$DEST"

wget "$URL" -P "$DEST"

echo "File downloaded to $DEST"
