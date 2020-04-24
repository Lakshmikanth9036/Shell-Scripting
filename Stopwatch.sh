#!/bin/sh


echo "Enter any key to start the stopwatch"
read s
start=$(date +%s)
echo "Enter any key when you want to stop the watch"
read a
stop=$(date +%s)
elapsed=$(( stop-start ))
echo $elapsed".sec"
