#!/bin/bash

#
# script that toggles the "disable touchpad while typing" behaviour
#

SCRIPT_PATH=~/.config/polybar/touch_toggle.sh

icon=""

# STATE=0 -> feature is disabled
# STATE=1 -> feature is enabled
# checks whether the daemon is associated daemon is running
if ps -ef | egrep -q ".*\ .*\ 1\ .*\ .*\ .*\ .*\ syndaemon"; then
    STATE=1
    echo "%{F#FFFFFF}$icon"
else
    STATE=0
    echo "%{F#69696A}$icon"
fi

# "syndaemon -i X -K -R" where X is the delay in seconds
# I set 0.2 as the default value

case "$1" in
    --click)
	if [ "$STATE" -eq "0" ]; then
	    syndaemon -i 0.2 -K -R &
	else
	    killall syndaemon
	fi
	;;
esac
