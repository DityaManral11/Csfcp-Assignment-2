#!/bin/bash
# Script Name: monitor.sh
# Purpose: Log CPU and memory usage every 5 seconds
# Author: Ditya Manral
# Date: 13-11-2025

LOGFILE="/home/user/monitor_log.txt"

echo "Starting CPU & Memory Monitor..."
echo "--------------------------------" >> "$LOGFILE"

while true
do
    echo "Timestamp: $(date)" >> "$LOGFILE"
    top -b -n1 | head -5 >> "$LOGFILE"
    echo "--------------------------------" >> "$LOGFILE"
    sleep 5
done
