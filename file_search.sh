#! /bin/bash/

RED="\e[31m"
GREEN="\e[32m"
BLUE="\e[34m"
NC="\e[0m" 
white="\e[47m"
read -p "Enter the file name you want to Search: " file

file_found=$(find / -type f -name "$file" 2>/dev/null)

if [ -n "$file_found" ];
then 
   echo "${white}${BLUE}Found the File(s) '$file'${NC}${NC}"
   echo  "${GREEN}Found the File(s) '$file' at:${NC}"

   for file in $file_found; do
      echo "${RED}path: ${NC}${GREEN}$file${NC}"
      echo "${GREEN}Contents:${NC}"
	cat "$file"
	echo  "\n------------------------------\n"
   done
else  
     echo  "${RED}$file is not exist in out records${NC}"
fi
