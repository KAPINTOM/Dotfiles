#!/bin/bash
# bigmonitor.sh — toggle between HDMI-1 and the laptop panel (eDP-1)

hdmi_active() {
    # An active output has a geometry like "1920x1080+0+0" on its line;
    # a disabled one only shows "(normal left inverted …)".
    xrandr --query | grep -qE '^HDMI-1 connected (primary )?[0-9]+x[0-9]+\+'
}

if hdmi_active; then
	xrandr --output eDP-1 --primary --auto --output HDMI-1 --off
    	setxkbmap latam
else
	xrandr --output HDMI-1 --primary --mode 1920x1080 --rate 75 --output eDP-1 --off
	setxkbmap es
fi

#setxkbmap es
feh --bg-fill --randomize Wallpapers

echo "Display toggled (HDMI active: $(hdmi_active && echo yes || echo no))"
