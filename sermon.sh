#!/bin/bash

# Sermon connects to a list of servers and output's info about the servers
# current health status.
#
# Parameter $1 is the command to run
# Parameter $2 is the list of servers or a single server where to execute 


# Define functions for the commands
function uptime () {
  ssh "$1" uptime
}

function disk () {
  ssh "$1" df -h
}

function top5 () {
  ssh "$1" ps -Ao user,pid,pcpu,comm --sort=-pcpu | head -n 6
}

# CHeck what command should be run
case "$1" in

  uptime)
    uptime "$2"
    ;;

  disk)
    disk "$2"
    ;;

  top5)
    top5 "$2"
    ;;

  *)
    echo "Command not found"
    ;;
esac
