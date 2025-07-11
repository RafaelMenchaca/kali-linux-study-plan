#!/bin/bash
# Week 1 Day 5 – Interactive CLI tool with color

RED="\033[0;31m"
GREEN="\033[0;32m"
BLUE="\033[0;34m"
CYAN="\033[0;36m"
NC="\033[0m" # No Color

echo -e "${BLUE}Welcome to System Quick Check!${NC}"
echo
echo "What do you want to check?"
echo "1) Uptime"
echo "2) Disk usage"
echo "3) Logged in users"
echo "4) Exit"
read -p "Enter your choice [1-4]: " choice

echo

case $choice in
  1)
    echo -e "${CYAN}Uptime:${NC}"
    uptime
    ;;
  2)
    echo -e "${CYAN}Disk Usage:${NC}"
    df -h --total | grep total
    ;;
  3)
    echo -e "${CYAN}Logged in users:${NC}"
    who
    ;;
  4)
    echo -e "${RED}Exiting...${NC}"
    exit 0
    ;;
  *)
    echo -e "${RED}Invalid option. Please choose 1-4.${NC}"
    ;;
esac
echo -e "\n${GREEN}Thank you for using System Quick Check!${NC}"
echo -e "${BLUE}Have a great day!${NC}"
echo -e "\n${CYAN}Remember to always be cautious with system commands!${NC}"
echo -e "${GREEN}Goodbye!${NC}"