#!/bin/bash
# Author: Lakshika Dhasmana
# Roll No: 2601730342
# Purpose: Display a system information report

echo "=================================="
echo "Name: Lakshika Dhasmana"
echo "Roll No: 2601730342"
echo "Date: $(date)"
echo "=================================="

echo ""
echo "CPU Information:"
if command -v lscpu >/dev/null 2>&1; then
    lscpu | grep -E 'Model name|^CPU\(s\):' | head -2
else
    grep -m1 'model name' /proc/cpuinfo
fi

echo ""
echo "Memory Information:"
free -h | awk 'NR==1 || NR==2 {print}'

echo ""
echo "Top 3 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -4

echo ""
echo "Report generated successfully."
