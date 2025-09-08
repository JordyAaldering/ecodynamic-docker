#!/bin/bash

# Start `ecodynamic` server in the background
if [ "$#" -eq 0 ]; then
 ecodynamic genetic &
else
 ecodynamic "$@" &
fi

# Start a bash session
exec bash
