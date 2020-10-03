#!/bin/bash

# Sermon connects to a list of servers using the current users ssh-keys and relays back the current server load

# Fist parameter is the command to run
command=$1

# Second parameter is the data to input to the command
parameter=$2

echo "$1"
echo "$2"

# CHeck what command should be run
case "$1" in

  uptime)
    ssh "$2" uptime
    ;;

  disk)
    ssh "$2" df -h
    ;;

#  PATTERN_N)
#    STATEMENTS
#    ;;
#
  *)
    echo "Command not found"
    ;;
esac
