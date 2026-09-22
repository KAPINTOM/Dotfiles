#!/bin/bash

# Check if stalonetray is already running
if pgrep -x "stalonetray" > /dev/null; then
    # It's running, so kill it
    pkill -x "stalonetray"
    echo "stalonetray stopped"
else
    # Not running, so launch it (in background, detached from terminal)
    stalonetray &
    disown
    echo "stalonetray started"
fi
