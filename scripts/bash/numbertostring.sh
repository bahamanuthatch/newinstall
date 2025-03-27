#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <integer>"
    exit 1
fi

if ! [[ "$1" =~ ^[0-9]$ ]]; then
    echo "Error: Please provide a single-digit non-negative integer (0-9)"
    exit 1
fi
number=$1

ones=(zero one two three four five six seven eight nine)

echo "${ones[$number]}"


