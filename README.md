# Linux-Learning
### Bash Scripting
Find files in cd with .log that have been modified in past 24hrs:  
`find . -name "*.log" -mtime -1` 

Created script in vim to [analyze-logs](Logs/analyze-logs.sh)
- added shebang `#!/bin/bash`
- added formatting to echo lines with -e and \n
- added variables for absolute paths to the logs files

Give execute perms:  
`chmod +x analyze.logs.sh`

Run script:  
`./analyze-logs.sh`