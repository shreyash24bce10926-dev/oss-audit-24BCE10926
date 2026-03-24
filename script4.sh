#!/bin/bash
# Script 4: Automated Configuration Backup
# Author: Shreyash Yadav | Course: Open Source Software

# 1. setup backup directory
backup_dir="$HOME/vlc_backup"
mkdir -p "$backup_dir"

echo "starting backup utility"
echo "--------------------------"

# 2. Find and copy configuration files
echo "[1] Collecting configuration files..."
find "$HOME/.config/vlc" -name "*.conf" -o -name "*.txt" -exec cp {} "$backup_dir" \; 2>/dev/null

# 3. Create a compressed archive
echo "[2] creating tarball archive"
tar_file="vlc_config_backup_$(date +%Y%m%d).tar.gz"
tar -czf "$tar_file" -C "$HOME" "vlc_backup"

if [ -f "$tar_file" ]; then
    echo "Success: backup archive created as $tar_file"
else
    echo "Error: backup failed."
fi

# 4. Clean up temporary directory
rm -rf "$backup_dir"

echo "--------------------------"
echo "Final Audit tasks completed."
