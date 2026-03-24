#!/bin/bash
# Script 3: Performance and Config Audit
# Author: Shreyash Yadav | Course: Open Source Software

echo "System Audit: Resources & Configuration"
echo "----------------------------------------"

# 1. checking memory usage (RAM)
echo "[1] Memory Status:"
free -h | grep -E 'total|Mem'
echo ""

# 2. checking top cpu consumers
echo "[2] Top CPU Processes:"
ps -eo pid,cmd,%cpu --sort=-%cpu | head -n 6
echo ""

# 3. TODO: check software config directory permissions
# VLC config is usually in ~/.config/vlc
echo "[3] Software Config Audit:"
conf_path="$HOME/.config/vlc"

if [ -d "$conf_path" ]; then
    echo "Directory found: $conf_path"
    # Printing the directory permissions specifically
    echo "Permissions: $(ls -ld $conf_path | awk '{print $1}')"
else
    echo "Note: Config directory not found. Please run VLC once."
fi
echo ""

# 4. checking root disk space
echo "[4] Disk Space (Root Partition):"
df -h / | grep -E 'Filesystem|/'

echo "----------------------------------------"
echo "Audit logged at: $(date)"
