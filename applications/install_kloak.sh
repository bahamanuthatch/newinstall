#!/bin/bash
# github.com/bahamanuthatch
# Run with sudo

curl --tlsv1.3 --proto =https --max-time 180 --output derivative.asc https://www.whonix.org/derivative.asc

cp derivative.asc /usr/share/keyrings/derivative.asc

echo "deb [signed-by=/usr/share/keyrings/derivative.asc] https://deb.whonix.org bullseye main contrib non-free" | tee /etc/apt/sources.list.d/derivative.list

