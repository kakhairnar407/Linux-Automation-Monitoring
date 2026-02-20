#!/bin/bash

LOG_DIR="$HOME/linux-automation/logs"
mkdir -p $LOG_DIR

LOG_FILE="$LOG_DIR/log_monitor.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "----- Log Monitor at $DATE -----" >> $LOG_FILE

if [ -f /var/log/messages ]; then
    grep -i "error" /var/log/messages | grep -v "RETBleed" >> $LOG_FILE
elif [ -f /var/log/syslog ]; then
    grep -i "error" /var/log/syslog | grep -v "RETBleed" >> $LOG_FILE
else
    # journalctl fallback, skip RETBleed
    journalctl -p err -n 50 | grep -v "RETBleed" >> $LOG_FILE
fi

echo "-------------------------------" >> $LOG_FILE
