#!/bin/bash

echo "NMAP Automation created by Zain"
read -p "Enter victim ip: "  ip
echo "The address you entered is $ip"
echo "What type of scan you want"
echo "1: -sS Syn Scan"
echo "2: -sT Connect Scan"
echo "3: -sF Full Scan"
echo "4: -sX XMAS Scan"
echo "5: -sN Null Scan"
echo "6: MAC Address Changer"
echo "7: Sub Domain Finder"
read -p "Enter your choice: " choice
if [[ $choice == 1 ]]; then
    echo "Do you want to add -O and -v for more details: "
    read -p "Enter y for yes and n for no: " a
    if [[ $a == y || $a == Y ]]; then
        nmap $ip -sS -v -O
    elif [[ $a == n || $a == N ]]; then
        nmap $ip -sS
    else
        echo "You entered wrong option"
    fi
elif [[ $choice == 2 ]]; then
    echo "Do you want to add -O and -v for more details: "
    read -p "Enter y for yes and n for no: " b
    if [[ $b == y || $b == Y ]]; then
        nmap $ip -sT -v -O
    elif [[ $b == n || $b == N ]]; then
        nmap $ip -sT
    else
        echo "You entered wrong option"
    fi
elif [[ $choice == 3 ]]; then
    echo "Do you want to add -O and -v for more details: "
    read -p "Enter y for yes and n for no: " b
    if [[ $b == y || $b == Y ]]; then
        nmap $ip -sF -v -O
    elif [[ $b == n || $b == N ]]; then
        nmap $ip -sF
    else
        echo "You entered wrong option"
    fi
elif [[ $choice == 4 ]]; then
    echo "Do you want to add -O and -v for more details: "
    read -p "Enter y for yes and n for no: " b
    if [[ $b == y || $b == Y ]]; then
        nmap $ip -sX -v -O
    elif [[ $b == n || $b == N ]]; then
        nmap $ip -sX
    else
        echo "You entered wrong option"
    fi
elif [[ $choice == 5 ]]; then
    echo "Do you want to add -O and -v for more details: "
    read -p "Enter y for yes and n for no: " b
    if [[ $b == y || $b == Y ]]; then
        nmap $ip -sN -v -O
    elif [[ $b == n || $b == N ]]; then
        nmap $ip -sN
    else
        echo "You entered wrong option"
    fi
elif [[ $choice == 6 ]]; then
    echo "1: Auto MAC Address Changer"
    echo "2: Your choice MAC Address Adder"
    read -p "Enter correct option: " option
    if [[ $option == 1 ]]; then
        read -p "Enter your adoptor name eth0 or wlan0" mac
        macchanger -r $mac
    elif [[ $option == 2 ]]; then
        read -p "Enter custom MAC Address: " macca
        read -p "Enter adaptor name eth0 or wlan0: " mac
        macchanger -m $macca $mac
    else
        echo "You entered wrong option"
    fi
elif [[ $choice == 7 ]]; then
    read -p "Enter any domain: " domain
    subfinder -d $domain
    assetfinder $domain
else
    echo "You entered wrong option"
fi
