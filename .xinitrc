#!/bin/sh

DWMVER=$(dwm -v 2>&1)

while xsetroot -name "`date` `uptime | sed 's/.*,//'` $DWMVER"
do
    sleep 1
done &

/home/kiri/autostart.sh &
exec dwm