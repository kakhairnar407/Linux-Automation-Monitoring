#!/bin/bash

# Ensure the logs folder exists
LOG_DIR="/home/ec2-user/linux-automation/logs"
mkdir -p $LOG_DIR

LOG_FILE="$LOG_DIR/health_check.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "----- Health Check at $DATE -----" >> $LOG_FILE

# CPU usage
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
echo "CPU Usage: $CPU%" >> $LOG_FILE

# Memory usage
MEM=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')
echo "Memory Usage: $MEM%" >> $LOG_FILE

# Disk usage
DISK=$(df -h / | awk 'NR==2 {print $5}')
echo "Disk Usage: $DISK" >> $LOG_FILE

echo "-------------------------------" >> $LOG_FILE
