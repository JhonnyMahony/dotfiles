#!/bin/bash

# Check if wvkbd-mobintl is running, toggle it
if pgrep -x "wvkbd-mobintl" > /dev/null
then
    pkill -x wvkbd-mobintl
else
    wvkbd-mobintl &
fi
