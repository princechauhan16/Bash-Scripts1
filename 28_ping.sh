#!/bin/bash

# ============================================================================
# Site Connectivity Checker
# ============================================================================

# Description:
#   Prompts the user to enter a website or host and sends a single ping
#   request to check whether the host is reachable.
#
#   The script checks the exit status of the ping command and displays
#   a success message if the connection is reachable, otherwise it
#   displays a failure message.
#
# Usage:
#   ./site-check.sh
#
# Input:
#   Website, hostname, or IP address
#
# Output:
#   Displays whether the specified host is reachable or unreachable.
#
# Requirements:
#   - Bash
#   - ping
#
# Author: Prince Chauhan
# ============================================================================

read -p "which site you want to check? " site

ping -c 1 $site


if [[ $? -eq 0  ]]
then
	echo "succeesfuly connected to $site"
else
	echo "Unable to connect to $site"
fi

