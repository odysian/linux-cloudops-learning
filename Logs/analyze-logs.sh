#!/bin/bash

LOG_DIR="/home/odys/Linux-Learning/Logs"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"

ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

echo "Analyzing log files"
echo "==================="

echo -e "\nList of log files updated in last 24 hours"
LOG_FILES=$(find . -name "*.log" -mtime -1)
echo "$LOG_FILES"

for LOG_FILE in $LOG_FILES; do
    echo -e "\nSearching ${ERROR_PATTERNS[0]} logs in $LOG_FILE file"
    grep "${ERROR_PATTERNS[0]}" "$LOG_FILE"

    echo -e "\nNumber of ${ERROR_PATTERNS[0]} logs found in $LOG_FILE" 
    grep -c "${ERROR_PATTERNS[0]}" "$LOG_FILE"

    echo -e "\nSearching ${ERROR_PATTERNS[1]} logs in $LOG_FILE file"
    grep "${ERROR_PATTERNS[1]}" "$LOG_FILE"

    echo -e "\nNumber of ${ERROR_PATTERNS[1]} logs found in $LOG_FILE"
    grep -c "${ERROR_PATTERNS[1]}" "$LOG_FILE"

    echo -e "\nSearching ${ERROR_PATTERNS[2]} logs in $LOG_FILE file"
    grep "${ERROR_PATTERNS[2]}" "$LOG_FILE"

    echo -e "\nNumber of ${ERROR_PATTERNS[2]} logs found in $LOG_FILE"
    grep -c "${ERROR_PATTERNS[2]}" "$LOG_FILE"
done