#!/bin/bash
# Sermon connects to a list of servers and output's info about the servers current health status

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

  top5)
    ps -Ao user,pid,pcpu,comm --sort=-pcpu | head -n 6
    ;;

  *)
    echo "Command not found"
    ;;
esac
