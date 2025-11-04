# Levels 0-5

## Level 0 -> 1
### Instructions
The password for the next level is stored in a file called readme located in the home directory. Use this password to log into bandit1 using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.
- `ssh bandit0@bandit.labs.overthewire.org -p 2220`
- `cat readme`
- **ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If**

## Level 1 -> 2
### Instructions
The password for the next level is stored in a file called - located in the home directory
- `cat ./-`
- **263JGJPfgU6LtdEvgfWU1XP5yac29mFx**

## Level 2 -> 3
### Instructions
The password for the next level is stored in a file called --spaces in this filename-- located in the home directory
- `cat ./"--spaces in this filename--"`
- **MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx**

## Level 3 -> 4
### Instructions
The password for the next level is stored in a hidden file in the inhere directory.
- `ls -a` or `ls .*` both worked
- **2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ**

## Level 4 -> 5
### Instructions
The password for the next level is stored in the only human-readable file in the inhere directory. Tip: if your terminal is messed up, try the “reset” command.
- `ls -l` returns 10 files
- `file ./*` shows the type of the files, only file07 is ASCII text
- `cat ./-file07`
- **4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw**
