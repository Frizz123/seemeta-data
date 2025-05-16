#!/usr/bin/env bash
git fetch
git stash
git pull --rebase
git stash pop || true
date '+%Y-%m-%d %H:%M:%S' > release.txt
git add -A
git commit -m "add new data"
git push origin master