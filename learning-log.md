# 🧠 Kali Linux Study Log – Rafael

## 📅 07-31-2025 Week 2 Day 2 
Network Scanning

- ✅ Learned how to inspect current network settings using ip a
- ✅ Identified IP address and subnet of WSL2 Kali environment (eth0)
- ✅ Used nmap -sn to discover live hosts in the subnet
- ✅ Used nmap -sV to scan local machine for open ports and services
- ✅ Created and ran a Bash script scan-network.sh to automate scans and save results to nmap-scans.txt
- 🧠 Reinforced understanding of:
    - IP ranges and subnetting
    - Passive vs active scanning
    - Service version detection (-sV)
- 🔐 Aware that WSL2 is isolated from the host network (NAT), real LAN scanning requires a full Linux install or bridged adapter

## 📅 07-23-2025 – Week 2 Day 1 
Network Check

- ✅ Test to google.com for practice
- ✅ Installed 'sudo apt install dnsutils whois net-tools traceroute -y'
- ✅ IP address info 'ip a'
- ✅ Testing ping with 'ping -c 4 google.com'
- ✅ Traceroutes 'traceroute google.com'


## 📅 07-17-2025

- ❌ My laptop with dual boot kali linux / windows just die :c
- ✅ Now i got a brand new laptop and installed kali linux terminal WSL


## 📅 07-10-2025 – Week 1 Day 5

- ✅ Built my first interactive Bash tool: `check-status.sh`
- ✅ Learned to use `read`, `if`, `case`, and ANSI color codes
- ✅ Practiced making decisions and showing results with style
- 🔥 This feels like a real terminal tool!


## 📅 07-09-2025 – Week 1 Day 4

- ✅ Switched from `last` to `wtmpdb` for login history
- ✅ Built a script to check logins for today
- ✅ Learned how to pass `date` output as CLI arguments


## 📅 07-07-2025 – Week 1 Day 3

- ✅ Explored Linux root folders: `/`, `/etc`, `/usr`, `/home`, `/var`
- ✅ Used `cat /etc/hostname` to view system config
- ✅ Ran `dpkg -l`, `dpkg -s`, and `apt-cache search` to view packages
- ✅ Learned how Linux stores system-wide apps and configs
- ⚠️ Will never delete files in `/etc` or `/usr` 😅


## 📅 07-06-2025 – Week 1 Day 2

- ✅ Practiced with `chmod` (444, u+w)
- ✅ Used `sudo chown` to change file ownership to root
- ❌ Got permission errors when writing to root-owned files
- ✅ Learned how `sudo` allows root-level access
- 💡 Realized how Linux protects system files through permissions


## 📅 07-05-2025 - Week 1 day 1

- ✅ Practiced basic Linux commands via custom script  
- ✅ Learned about:
- `mkdir`, `cd`, `touch`, `cp`, `mv`, `chmod`, `ls`
- File permissions (`chmod 600`, `ls -l`)
- Navigating into subdirectories


## 📅 07-04-2025

- ✅ Finished Kali Linux setup (dual boot with Windows)
- ✅ Created GitHub repo and pushed structure
- ✅ Installed VSCode, GitHub CLI, Python virtualenv
- ✅ Installed requests and rich inside `.venv`
- 🔥 Ready to start Week 1: Linux Basics
