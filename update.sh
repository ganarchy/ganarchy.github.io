#!/bin/sh
mkdir -p ./private/ganarchy/
mkdir -p ./.well-known/ganarchy/

# load remote configs (if any)
(cd ./private/ && exec ./fetch)

# if expansion fails, it won't print to stdout and config.toml will be empty. just ignore stderr.
./wrapper.bash merge-configs ./private/*.toml 2>/dev/null > ./private/ganarchy/config.toml

# read and process projects
projects=$(./wrapper.bash cron-target project-list) || exit 1
printf '%s\n' "$projects" | while IFS= read -r project; do
	mkdir -p ./project/"$project"/ || exit 1
	./wrapper.bash cron-target "$project" > ./project/"$project"/index.html || exit 1
done

# generate index, config, etc
./wrapper.bash cron-target index > ./index.html || exit 1
./wrapper.bash cron-target config > ./config.toml || exit 1
cp ganarchy/index.js ./index.js || exit 1

# push to github pages
git add . || exit 1
git commit -a -m "Update $(date -Iseconds -u)" || exit 1
git push || exit 1
