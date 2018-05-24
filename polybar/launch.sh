te an executable file containing the startup logic, for example $HOME/.config/polybar/launch.sh:

#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar top &
polybar bottom &


echo "Bars launched..."
