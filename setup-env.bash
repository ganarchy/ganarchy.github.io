#!/usr/bin/env bash
export XDG_DATA_HOME="$(pwd)"/data
export XDG_CACHE_HOME="$(pwd)"/cache
export XDG_CONFIG_HOME="$(pwd)"/config
#export XDG_CONFIG_DIRS="$(pwd)"/private

python -m venv venv
. venv/bin/activate
pip install -r requirements.txt --force-reinstall
