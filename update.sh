#!/bin/sh
./wrapper.bash cron-target 125baefaade696119262cd7ae5127c4265a59edc > project/125baefaade696119262cd7ae5127c4265a59edc/index.html
cp ganarchy/index.js ./index.js
git add .
git commit -a -m "Update $(date -I -u)"
git push
