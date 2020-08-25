#!/bin/bash

output=$HOME/research/sys_info.txt
ip=$(ip addr | grep inet | head -1 | tail -2)
suids=$(find / -type -perm /4000)

#check if directory exists, create if not
if [ ! -d $HOME/research ]
then
	mkdir $HOME/research
fi

#remove old file
if [ -f $output ]
then
	rm $output
fi



echo "A Quick Systems Audit Script" >> $output
date >> $output
echo "" >> $output
echo "Machine Type Info:" >> $output
echo $MACHTYPE >> $output
echo -e "Uname info: $(uname -a) \n" >> $output
echo -e "$ip \n" >> $output
echo "Hostname: $(hostname -s) " >> $output
echo "DNS Servers: " >> $output
cat /etc/resolv.conf >> $output
echo "Memory Info: " >> $output
free >> $output
echo -e "\nCPU Info: " >> $output
lscpu | grep CPU >> $output
echo -e "\mDisk Usage:" >> $output
echo -e "\nWho is logged in: \n $(who) \n" >> $output
echo $suids >> $output
