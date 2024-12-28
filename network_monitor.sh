#!/bin/bash

# Define the target host
TARGET_HOST="google.com"

# Log file to store the results
LOG_FILE="network_log.txt"

# Check the connection every 5 seconds
INTERVAL=5

echo "Starting network monitor script..."
echo "Logging results to $LOG_FILE"

# Loop indefinitely
while true; do
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    if ping -c 1 $TARGET_HOST &> /dev/null; then
        echo "$TIMESTAMP - $TARGET_HOST is reachable" >> $LOG_FILE
    else
        echo "$TIMESTAMP - $TARGET_HOST is NOT reachable" >> $LOG_FILE
    fi
    sleep $INTERVAL
done
