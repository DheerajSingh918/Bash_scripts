##Write a Shell Bash Script for report server related information 


#! bin/bash

date 
echo "system uptime"
uptime 
echo "Last system loged in"
last -a | head -5
