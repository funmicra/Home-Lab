#!/bin/bash
# Simple script that prints current date to log file

LOGFILE="/var/log/date-printer.log"

while true; do
  echo "$(date)" >> $LOGFILE
  sleep 60
done
