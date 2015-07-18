#!/bin/bash

# script to start conky. 
# checks if conky is running. if so kills process
# and starts a new one.

PID=$(pidof conky)

if [ -z $PID ]; then
    conky -c ~/.conkyrc > /dev/null &
    exit 0
else
    pkill conky
    sleep 5
    conky -c ~/.conkyrc > /dev/null &
    exit 0
fi
