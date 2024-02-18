#this is a script  writen for genarel port scanning. To run it   location/scanner.sh <ip>



#!/bin/bash
IP=$1

function portscan {
    for ((counter=1; counter<=1024; counter++))
    do
        (echo > /dev/tcp/$IP/$counter) >/dev/null 2>&1 && echo "Port $counter i>
    done
}
portscan
