#! bin/bash/
# Define color codes using output
RED="\e[31m"
RESET="\e[0m" 


if [ $(id -u) -ne 0 ]; then
   echo "Not Running as Root user.."
  exit 1
fi

all_user=()
Audit_FILE=Audit.txt
touch Audit.txt

printf "$(echo ${RED}=============={HOSTNAME}====================${RESET}) \n\n" >> Audit.txt
printf "$(hostname)\n\n"  >> Audit.txt


printf "$(echo ${RED}============={IP Address of this server}==================${RESET}) \n\n" >>Audit.txt
printf "$(curl -s ipconfig.io/ip)\n\n" >> Audit.txt 


printf "$(echo ${RED}==================={OS-Details}=================== ${RESET})\n" >> Audit.txt
printf "$(head -2 /etc/os-release) \n\n" >> Audit.txt

printf "$(echo ${RED}=================={List of open port}=====================${RESET})\n" >>Audit.txt
printf "$(netstat -ntlp | grep LISTEN) \n" >> Audit.txt



