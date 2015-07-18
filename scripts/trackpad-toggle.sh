#!/bin/bash
exec synclient TouchpadOff=$(synclient -l | grep -c 'TouchpadOff.*=.*0')
