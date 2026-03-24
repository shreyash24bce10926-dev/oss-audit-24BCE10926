#!/bin/bash
#Script 1: System Identity Report
#Author: Shreyash Yadav
#Course: Open Source Software
#--- Variables
STUDENT_NAME="Shreyash Yadav"
SOFTWARE_CHOICE="VLC Media Player"
#System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
#--- Display
echo "======================================"
#Fill in your name
#Fill in your chosen software
echo " Open Source Audit - $STUDENT_NAME"
echo " Software: $SOFTWARE_CHOICE"
echo "======================================"
echo "Kernel : $KERNEL"
echo "User   : $USER_NAME"
echo "Uptime : $UPTIME"
#TODO: Add distro name, date, and license message
DISTRO=$(cat /etc/issue | head -n 1)
CURRENT_DATE=$(date)
echo "Distro : $DISTRO"
echo "Date   : $CURRENT_DATE"
echo "License: This Linux OS is covered by the GPL v2 license, and VLC uses GPL/LGPL."
