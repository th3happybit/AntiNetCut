# AntiNetcut simple script by th3happybit
#!/bin/sh
# ping 
# -q quiet
# -c nb of pings to perform
# macchanger 
# -r random mac

# setup the interface
myinterface="wlp3s0"

while sleep 1; 
do
	ping -q -c5 google.com > /dev/null
	 
	if [ $? -eq 0 ]
	then
		echo "internet!"
	else
		echo "no internet!"
		ifconfig $myinterface down
		macchanger -r $myinterface
		ifconfig $myinterface up
	fi;
done