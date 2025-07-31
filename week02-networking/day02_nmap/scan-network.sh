#!/bin/bash
# Week 2 Day 2 – Network Discovery Script

# Define output file
LOG_FILE="nmap-scans.txt"
DATE=$(date '+%Y-%m-%d')
MY_IP=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
NETWORK_RANGE="172.30.144.0/20"  # Replace with your correct range if needed

echo "📅 $DATE – Week 2 Day 2" >> "$LOG_FILE"
echo "🔎 Scanning Network: $NETWORK_RANGE" >> "$LOG_FILE"
echo "Command: nmap -sn $NETWORK_RANGE" >> "$LOG_FILE"
echo "----------------------------------------" >> "$LOG_FILE"

# Ping scan for live hosts
nmap -sn "$NETWORK_RANGE" >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "🔐 Scanning this machine ($MY_IP) for open ports..." >> "$LOG_FILE"
echo "Command: nmap -sV $MY_IP" >> "$LOG_FILE"
echo "----------------------------------------" >> "$LOG_FILE"

# Service detection scan on own machine
nmap -sV "$MY_IP" >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "✅ Scan complete. Results saved in $LOG_FILE"
