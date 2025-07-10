#!/bin/bash
# Week 1 Day 4 – System Health Report

echo "🖥️  System Health Report"
echo "========================"
echo

echo "👤 Current User: $(whoami)"
echo "🏠 Home Directory: $HOME"
echo

echo "🕒 Uptime:"
uptime
echo

echo "💽 Disk Usage:"
df -h --total | grep total
echo

echo "📊 CPU Load:"
top -b -n1 | grep "Cpu(s)"
echo

echo "👥 Logged In Users:"
who
