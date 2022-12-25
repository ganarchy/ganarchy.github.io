#!/usr/bin/env bash
export XDG_DATA_HOME="$(pwd)"/data
export XDG_CACHE_HOME="$(pwd)"/cache
export XDG_CONFIG_HOME="$(pwd)"/config
export XDG_CONFIG_DIRS="$(pwd)"/private:"${XDG_CONFIG_DIRS:-/etc/xdg}"
export GIT_TERMINAL_PROMPT=0
source venv/bin/activate
python -m ganarchy "$@"
