#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/Bocca.log
#polybar Bocca | tee -a /tmp/Bocca.log & disown
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown
if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d' ' -f1); do
		echo "Detected Monitor: $m"
		if [ "$m" = "DP-2" ]; then
			echo "i entered DP-2"
			MONITOR=$m polybar --reload Bocca &
		elif [ "$m" = "DP-1" ]; then
			MONITOR=$m polybar --reload Bocca2 &
		fi
	done
else
	polybar --reload Bocca &
fi

echo "Bars launched..."
