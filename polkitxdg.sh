#!/bin/bash

# Start all three commands in the background and save their Process IDs (PIDs)
/usr/lib/xdg-desktop-portal-gtk &
PID1=$!

/usr/lib/xdg-desktop-portal &
PID2=$!

/usr/bin/lxpolkit &
PID3=$!

# Function to kill all background processes
cleanup() {
    echo "Stopping background processes..."
    kill $PID1 $PID2 $PID3 2>/dev/null
}

# Trap termination signals (SIGINT/Ctrl+C, SIGTERM, EXIT) and run cleanup
trap cleanup SIGINT SIGTERM EXIT

# Keep the script running waiting for the background processes
wait
