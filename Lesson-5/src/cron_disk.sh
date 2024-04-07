#!/bin/bash

THRESHOLD_PERCENT=80

DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$DISK_USAGE" -gt "$THRESHOLD_PERCENT" ]; then
    echo "$(date +"%Y-%m-%d %T"): WARNING: Disk usage exceeded $THRESHOLD_PERCENT% - Current usage: $DISK_USAGE%" >> /var/log/disk.log
fi



