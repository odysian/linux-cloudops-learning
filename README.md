# Linux-Learning
### Bash Scripting

Find files in cd with .log that have been modified in past 24hrs:  
- `find . -name "*.log" -mtime -1`
- Assign to variable using command substitution
- `LOG_FILES=$(find . -name "*.log" -mtime -1)`
- `echo "$LOG_FILES"`

Created script in vim to [analyze-logs](Logs/analyze-logs.sh)
- Add shebang `#!/bin/bash`
- Add formatting to echo lines with -e and \n
- Add variables for absolute paths to the logs files
- Add array variable for "ERROR, FATAL, and CRITICAL"
- Add for loop


Give execute perms:  
`chmod +x analyze.logs.sh`

Run script:  
`./analyze-logs.sh`