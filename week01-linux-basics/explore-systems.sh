#!/bin/bash
# Week 1 Day 3 – Explore Linux System Structure + apt/dpkg

echo -e "\nCurrent user and home:"
whoami
echo $HOME

echo -e "\nTop level folders:"
ls /

echo -e "\nListing key system folders:"
ls -l /etc | head -n 5
ls -l /usr | head -n 5
ls -l /home
ls -l /var | head -n 5

echo -e "\nReading a config file (/etc/hostname):"
cat /etc/hostname

echo -e "\nShow system info (uname, hostname, uptime):"
uname -a
hostname
uptime

echo -e "\nUsing dpkg to see installed packages:"
dpkg -l | head -n 10

echo -e "\nChecking info about nmap (if installed):"
dpkg -s nmap | grep -i 'version\|description'

echo -e "\nUsing apt-cache to search for metasploit:"
apt-cache search metasploit | head -n 5

echo -e "\nDone. Be curious, but don’t delete anything in /etc or /usr!"
