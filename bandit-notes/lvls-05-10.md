# Levels 5-10
## Level 5 -> 6
### Instructions
The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties:
    - *human-readable*
    - *1033 bytes in size*
    - *not executable*

- find command has -type, -size, and -executable options
- `find ./* -type f -size 1033c ! -executable`
- `cat ./maybehere07/.file2`
- **HWasnPhtq9AVKe0dmk45nxy20cvUa6EG**

## Level 6 -> 7
### Instructions
The password for the next level is stored somewhere on the server and has all of the following properties:
    - owned by user bandit7
    - owned by group bandit6
    - 33 bytes in size

- Use find again but add -user and -group to filter
- Response has a lot of permission denied messages, send them to /dev/null/ 
- `find / -type f -size 33c -user bandit7 -group bandit6 2>/dev/null`
- **morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj**

## Level 7 -> 8
### Instructions
The password for the next level is stored in the file data.txt next to the word millionth
- `cat data.txt | grep "millionth"`
- **dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc**

## Level 8 -> 9
### Instructions
The password for the next level is stored in the file data.txt and is the only line of text that occurs only once
- `sort data.txt | uniq -u`
- **4CKMh1JI91bUIZZPXDqGanal4xvAg0JM**

## Level 9 -> 10
### Instructions
The password for the next level is stored in the file data.txt in one of the few human-readable strings, preceded by several ‘=’ characters.
- `strings data.txt | grep ===`
- **FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey**
