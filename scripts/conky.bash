#!/bin/bash

# script to start conky. 
# checks if conky is running. if so kills process
# and starts a new one.

PID=$(pidof conky)

if [ -z $PID ]; then
    # pkill conky;
    # sleep 1s;
    ~/./conky/start-conky.sh
    exit 0
else
    pkill conky;
    sleep 1s;
    ~/./conky/start-conky.sh
    exit 0
fi
