# Linux-Learning
### Bash Scripting

Find files in cd with .log that have been modified in past 24hrs:  
- `find . -name "*.log" -mtime -1`
- Assign to variable using command substitution
- `LOG_FILES=$(find . -name "*.log" -mtime -1)`
- `echo "$LOG_FILES"`

Created script in vim to [analyze_logs](Logs/analyze_logs.sh)
- Add shebang `#!/bin/bash`
- Add formatting to echo lines with -e and \n
- Add variables for absolute paths to the logs files
- Add array variable for "ERROR, FATAL, and CRITICAL"
- Add multiple for loops to make code more flexible
- Fix array loop using `${ERROR_PATTERNS[@]}`
- Output results to [log_analysis_report](Logs/log_analysis_report.txt)
- Add if statement to alert if `$ERROR_COUNT`>10

Give execute perms:  
`chmod +x analyze.logs.sh`

Run script:  
`./analyze-logs.sh`