#! /bin/bash/

if [ $(id -u) -ne 0 ]; then
  echo ("Not Running as Root user..")
  exit 1
fi

all_users=()
Audit_FILE=Audit_server.txt
touch Audit_server.txt
echo "======={HOSTNAME}====================\n"
printf "$(hostname)\n\n\n"
#======={IP Address of this server}======================
echo "======={IP Address of this server}======================\n\n\n"
printf "$(curl -s ipconfig.io/ip)\n\n\n"



