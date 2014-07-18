<link href="https://raw.githubusercontent.com/jasonm23/markdown-css-themes/gh-pages/markdown7.css" rel="stylesheet"></link>

# Andersen Lab git/GitHub Cheat Sheet

## `git init`

Initialize a git repository in the current directory. If you are not cloning a repository, this must be done first.

## `git clone [url]`
Clone a repository into a new directory (copy repo from GitHub or other remote site onto your computer in current directory). The url must end in `.git`.

## `git pull [remote] [branch]`
Pulling is used to pull the most recent changes from a remote git repository. The remote and branch options are not required if the repository has only one remote and one branch.

## `git log`
Used to display the history of commits in a specific repository. `git log --oneline` gives the same information in a simpler one line version. `git log --graph will print a prettified version of the log with branches and merges mapped out.

## `git add [file]`
Adds files to the staging area before they are committed.

## `git commit -m "Some message here"`
Commits the file(s)

## `git push [remote] [branch]`
Pushes all commits to the remote repository. GitHub is usually known as "origin". 

## `git remote add [name] [url]`
Adds a remote repository (i.e. a GitHub repository) to those tracked by the local git repository.

# Basic Workflow

Computer 1:
init --> add --> commit --> push

Computer 2:

pull --> add --> commit --> push
