#!/bin/bash

# 1️⃣ Set logs folder dynamically based on current user
LOG_DIR="$HOME/linux-automation/logs"
mkdir -p $LOG_DIR

# 2️⃣ Delete log files older than 7 days
find $LOG_DIR -type f -mtime +7 -exec rm -f {} \;

# 3️⃣ Append cleanup entry to cleanup.log
echo "Old logs cleaned up at $(date '+%Y-%m-%d %H:%M:%S')" >> "$LOG_DIR/cleanup.log"
