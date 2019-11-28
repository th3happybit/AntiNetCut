# AntiNetcut simple script by th3happybit
#!/bin/sh
# ping 
# -q quiet
# -c nb of pings to perform
# macchanger 
# -r random mac

# setup the interface

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'


if [ -z "$1" ] 
	then 
		myinterface="wlp3s0"; 
	else 
		myinterface="$1"; 
	fi;

if [ $(which ifconfig) ] 
	then 
		alias ip_or_ifconfig="ifconfig"; 
	else 
		alias ip_or_ifconfig="ip link set dev"; 
	fi;

while sleep 3; 
do
	ping -q -c5 google.com > /dev/null
	 
	if [ $? -eq 0 ]
	then
		printf "${GREEN}internet!${NC}\n"; exit;
	else
		printf "\n${RED}no internet!${NC}\n"
		ip_or_ifconfig $myinterface down
		macchanger -r $myinterface
		ip_or_ifconfig $myinterface up
	fi;
done
