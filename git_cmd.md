# Git initial setup

$ git config --global user.name "username"
$ git config --global user.email "user@gmail.com"
$ git config --global core.editor "vim"

$ git config --list    # To see Git settings

## Git Commands

$ git init             # Initialize a new git database
$ git clone            # Copy an existing database
$ git status           # Check the status of the local project
$ git diff             # Review the changes done to the project (working dir)
$ git add              # Tell Git to track a changed file
$ git add .            # Tell Git to add all changed file
$ git commit           # Save the current state of the project to database
$ git commit -m        #            ----------"------------
$ git push             # Copy the local database to a remote server
$ git pull             # Copy a remote database to a local machine
$ git log              # Check the history of the project
$ git log -p           # Check the history with differences 
$ git log --stat       #     --------"----------
$ git branch           # List, create or delete branches
$ git merge            # Merge the history of two branches together
$ git stash            # Keep the current changes stashed away to be used later
$ git show <name>      # Show and learn changes 
$ git log --reverse    # Reverse the order of commits
$ git log -n <number>  # limit the numbers of commits (git log -n 5)
$ git diff --staged    # Review the changes made to staged files

## Push an existing repository from the command line

git remote add origin <URL>
git branch -M master
git push -u origin master
git remote -v
git remote set-url --add <name> <newurl>
git remote set-url --delete <name> <url>
