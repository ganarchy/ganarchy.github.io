#!/bin/sh
./wrapper.bash run-once . || exit 1

# push to github pages
git add . || exit 1
git commit -a -m "Update $(date -Iseconds -u)" || exit 1
git push || exit 1
