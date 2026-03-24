#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Shreyash Yadav | Course: Open Source Software

PACKAGE="vlc"  # e.g. httpd, mysql, vlc, firefox

# Check if package is installed (Using dpkg for Ubuntu/WSL)
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E '^Version|^Maintainer|^Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Philosophy note about the package based on its name
case $PACKAGE in
    httpd)   echo "Apache: the web server that built the open internet" ;;
    mysql)   echo "MySQL: open source at the heart of millions of apps" ;;
    vlc)     echo "VLC: The open-source traffic cone that plays literally any media format" ;;
    firefox) echo "Firefox: The privacy-focused browser fighting for an open web" ;;
    git)     echo "Git: The version control system that connects developers worldwide" ;;
esac
