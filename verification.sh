#!/bin/bash
for i in `cat /home/$USER/scripts/IPs.txt`; do nslookup $i | grep ^Name -A1;echo;done
for i in `cat /home/$USER/scripts/IPs.txt`; do nmap --top-ports 50 -Pn $i ;echo;done
