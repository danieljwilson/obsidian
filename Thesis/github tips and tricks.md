---
tags: [github, tips-and-tricks, resources]
---

# Notes
**[ADD NEW FOLDER](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/)**

**[ADD FILE TO EXISTING REPO FROM COMMAND LINE](https://help.github.com/en/articles/adding-a-file-to-a-repository-using-the-command-line)**

**[TRYING TO UPDATE GITIGNORE AFTER THE FACT](https://www.git-tower.com/learn/git/faq/ignore-tracked-files-in-git)**

## Commands
`git clone` (html address of repository)
- use this inside of the directory where you want to clone the repository

`git init`
- creates new repository

`git status`
- shows what’s different between Local and Github *in the sky*

`git diff *filename*`     
- shows what has changed

`git add *filename*`
- adds any changes or new files BY NAME
- this makes changes TO BE committed
- git add . OR git add -A will add all files in directory
- can add multiple files by just naming sequentially with a space in between

`git commit -m “comment"`
- `m` means message

git log
     list of all previous commits

git reset 5d69206
     after git log you can pick a particular commit to go back to using the first 7 characters of the SHA

git reset HEAD filename
     unstages file changes in the staging area

git checkout HEAD filename
     discards changes in the working directory

git push
     syncs anything LOCAL put to github.com

THESE USUALLY ARE DONE IN SEQUENCE

git pull
     pulls down from github.com

git branch new_branch
     create new branch

git branch
     check which branch you are on

git checkout branch name
     move to a different branch     

git branch -d branch name
     delete old branch

git merge
     overwrite one branch with another

git show HEAD
     show the commit you are currently on

esc, colon then type ‘wq'
     if you just write git commit (with no -m) then it opens up an editor