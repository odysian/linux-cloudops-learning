#!/bin/bash

LOG_DIR="/home/odys/Linux-Learning/Logs"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"

echo "analyzing log files"
echo "==================="

echo -e "\nList of log files updated in last 24 hours"
find . -name "*.log" -mtime -1

echo -e "\nSearching ERROR logs in application.log file"
grep "ERROR" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of ERROR logs found in application.log" 
grep -c "ERROR" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of FATAL logs found in application.log"
grep -c "FATAL" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of FATAL logs found in system.log"
grep -c "FATAL" "$LOG_DIR/$SYS_LOG_FILE"

echo -e "\nNumber of CRITICAL logs found in system.log"
grep -c "CRITICAL" "$LOG_DIR/$SYS_LOG_FILE"

echo -e "\nCRITICAL log files in system.log file"
grep "CRITICAL" "$LOG_DIR/$SYS_LOG_FILE"
