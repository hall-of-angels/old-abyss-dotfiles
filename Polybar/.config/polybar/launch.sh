#! /bin/bash

killall -q polybar

polybar bar1 >>/tmp/polybar1.log 2>&1 &

echo "launched polybar"
