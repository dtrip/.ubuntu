#!/bin/bash

PID=$(pgrep solaar)

if [ -z $PID ]; then
    solaar &
fi
