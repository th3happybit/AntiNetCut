# AntiNetCut

a script just change the mac address for your interface, when someone using netcut in your network.

## Requirements

- macchanger

## How to use it

- give execute permission to the script: chmod u+x AntiNetCut.sh 
- run it: sudo ./AntiNetCut.sh &
- to set the interface name, run the script with: sudo ./AntiNetCut.sh yourInterface & 
 (u can get your interface using "ifconfig" or "ip -a" commands. For example: sudo ./AntiNetCut.sh wlp3s0 & )
- enjoy!

## Contribute

Contributions are welcome! just pull request!

## License

MIT licensed. See the bundled [License](https://github.com/th3happybit/AntiNetCut/blob/master/LICENSE) file for more details.
