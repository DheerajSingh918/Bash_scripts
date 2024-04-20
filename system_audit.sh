#!/bin/bash
RED="\e[31m"
GREEN="\e[32m"
RESET="\e[0m"
# System Information
echo "${RED}=== System Information ===${RESET}"
uname -a
cat /etc/os-release
uptime

# CPU Information
echo "${RED}=== CPU Information ===${RESET}"
lscpu

# Memory Information
echo "${RED}=== Memory Information ===${RESET}"
free -h
dmidecode -t memory | grep -i size

# Disk Space Information
echo "${RED}=== Disk Space Information ===${RESET}"
df -h
lsblk

# Network Information
echo "${RED}=== Network Information ===${RESET}"
ip a
netstat -tuln

# Installed Packages
echo "${RED}======================== Installed Packages ===========================${RESET}"
dpkg -l
rpm -qa

# Running Services
echo "${RED}=========================== Running Services ===============================${RESET}"
systemctl list-units --type=service --state=running

# Open Ports
echo "${RED}============================= Open Ports =================================${RESET}"
netstat -tuln
ss -tuln

# Users and Groups
echo "${RED}============================ Users and Groups =============================${RESET}"
cat /etc/passwd
cat /etc/group

# Firewall Rules
echo "${RED}============================== Firewall Rules =================${RESET}"
iptables -L
firewall-cmd --list-all

# Last Login Information
echo "${RED}=== Last Login Information ===${RESET}"
last reboot

# Log Files
echo "${RED}=== Log Files ===${RESET}"
ls -lh /var/log/

# Cron Jobs
echo "${RED}=== Cron Jobs ===${RESET}"
crontab -l
cat /etc/crontab

# SSH Configuration
echo "${RED}=== SSH Configuration ===${RESET}"
cat /etc/ssh/sshd_config

# Systemd Configuration
echo "${RED}=== Systemd Configuration ===${RESET}"
ls -l /etc/systemd/system/

# SELinux Status
echo "${RED}=== SELinux Status ===${RESET}"
sestatus

# Kernel Parameters
echo "${RED}=== Kernel Parameters ===${RESET}"
sysctl -a

# Performance Monitoring
echo "${RED}=== Performance Monitoring ===${RESET}"
top -n 1

# End of Audit
echo "${GREEN}======================== Audit Completed =====================${RESET}"
