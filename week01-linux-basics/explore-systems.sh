#!/bin/bash
# Week 1 Day 3 – Explore Linux System Structure + apt/dpkg

# Show current user and home directory
echo -e "\nCurrent user and home:"
whoami
echo $HOME

# List top level folders in the root directory
echo -e "\nTop level folders:"
ls /

# List contents of key system folders
echo -e "\nListing key system folders:"
ls -l /etc | head -n 5      # Show first 5 entries in /etc (system config files)
ls -l /usr | head -n 5      # Show first 5 entries in /usr (user programs and data)
ls -l /home                 # List user home directories
ls -l /var | head -n 5      # Show first 5 entries in /var (variable data files)

# Display the contents of a system config file
echo -e "\nReading a config file (/etc/hostname):"
cat /etc/hostname

# Show basic system information
echo -e "\nShow system info (uname, hostname, uptime):"
uname -a        # Kernel and system info
hostname        # System hostname
uptime          # How long the system has been running

# List installed packages using dpkg
echo -e "\nUsing dpkg to see installed packages:"
dpkg -l | head -n 10    # Show first 10 installed packages

# Show info about nmap package (if installed)
echo -e "\nChecking info about nmap (if installed):"
dpkg -s nmap | grep -i 'version\|description'   # Show version and description

# Search for metasploit packages using apt-cache
echo -e "\nUsing apt-cache to search for metasploit:"
apt-cache search metasploit | head -n 5         # Show first 5 results

# Final message
echo -e "\nDone. Be curious, but don’t delete anything in /etc or /usr!"
