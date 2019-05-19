#!/bin/sh
./wrapper.bash cron-target 125baefaade696119262cd7ae5127c4265a59edc > project/125baefaade696119262cd7ae5127c4265a59edc/index.html || exit 1
cp ganarchy/index.js ./index.js || exit 1
git add . || exit 1
git commit -a -m "Update $(date -Iseconds -u)" || exit 1
git push || exit 1
