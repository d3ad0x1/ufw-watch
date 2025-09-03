#!/bin/sh

LOG="/var/log/ufw.log"

[ ! -f "$LOG" ] && { echo "File $LOG not found!"; exit 1; }

# Colors
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

# Last 2 days
since=$(date --date="2 days ago" +"%b %_d")

grep "UFW" "$LOG" | grep -E "^$since|$(date +%b\ %_d)" | awk -v RED="$RED" -v GREEN="$GREEN" -v RESET="$RESET" '
{
    # Time (first 3 fields)
    time=$1 " " $2 " " $3

    # Action = combine $7 and $8, remove brackets
    gsub(/\[|\]/,"",$7); gsub(/\[|\]/,"",$8)
    action=$7 " " $8

    # Choose color
    color=RESET
    if(action=="UFW BLOCK") color=RED
    if(action=="UFW ALLOW") color=GREEN

    iface="-"; src="-"; dst="-"; dpt="-"

    for (i=1;i<=NF;i++) {
        if ($i ~ /^IN=/)  { split($i,a,"="); iface=a[2] }
        if ($i ~ /^SRC=/) { split($i,a,"="); src=a[2] }
        if ($i ~ /^DST=/) { split($i,a,"="); dst=a[2] }
        if ($i ~ /^DPT=/) { split($i,a,"="); dpt=a[2] }
    }

    printf "Time: %-15s | Action: %s%-10s%s | Interface: %-8s | Source: %-15s | Destination: %-15s | Port: %-5s\n", time, color, action, RESET, iface, src, dst, dpt
}'