#!/bin/bash
# Display the IP address information of the system
echo "📡 IP Address Info:"
ip a

echo ""

# Perform a ping test to check connectivity to google.com
echo "🌐 Ping Test:"
ping -c 4 google.com

echo ""

# Perform a traceroute to google.com to analyze the path taken by packets
echo "🌍 Traceroute:"
traceroute google.com
