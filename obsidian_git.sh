#!/usr/bin/env bash

cd /Users/djw/Documents/pCloud_synced/Obsidian

git add .

DATE=$(date)

git commit -m "$DATE entry"

git push -u origin master

osascript -e 'display notification "Pushed obsidian to remote." with title "SUCCESS"'