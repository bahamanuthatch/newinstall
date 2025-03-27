#!/bin/bash
day=$(date +%d)  # Get the day of the month (e.g., "23")

# Remove leading zero if present (e.g., "03" becomes "3")
day=${day#0}

# Calculate the ordinal suffix
if [ $day -ge 11 ] && [ $day -le 13 ]; then
    suffix="th"
else
    case $((day % 10)) in
        1) suffix="st" ;;
        2) suffix="nd" ;;
        3) suffix="rd" ;;
        *) suffix="th" ;;
    esac
fi

# Output the day with the suffix
echo "${day}${suffix}"

