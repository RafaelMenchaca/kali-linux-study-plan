#!/bin/bash
echo "📡 IP Address Info:"
ip a

echo ""
echo "🌐 Ping Test:"
ping -c 4 google.com

echo ""
echo "🌍 Traceroute:"
traceroute google.com
