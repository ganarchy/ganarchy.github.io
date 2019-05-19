#!/usr/bin/env bash
export XDG_DATA_HOME=./data
export XDG_CACHE_HOME=./cache
source venv/bin/activate
./ganarchy/ganarchy.py "$@"
