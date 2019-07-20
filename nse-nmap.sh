#!/usr/bin/bash
# Nse-nmap v1.1
# Author: LuisMadero
if [ "$(which nmap)" == "" ]; then
        echo -n -e "nmap need to be installed [y/N] "
        read yorn
        if [ "$yorn" == "y" ] || [ "$yorn" == "Y" ]; then
                apt install nmap
        elif [ "$yorn" == "n" ] || [ "$yorn" == "N" ]; then
                exit
        else
                apt install nmap
        fi
fi
clear
echo -e " ---------------------------------------------------------------"
echo
echo -e " /             \                                                "
echo -e "|    ()   ()    |                                               "
echo -e "(_     /|\     _)                                               "
echo -e " \_\,,,,,,,,,/_/                                                "
echo -e "    \_'''''_/      19-07-2019 | creado por: Luis Madero | yoo   "
echo
echo -e "----------------------------------------------------------------"

echo -e " [01] Enumeracion http"
echo -e " [02] Titulo http"
echo -e " [03] Fuerza bruta de dns"
echo -e " [04] OS y version"
echo -e " [05] Encuentra errores HTTP"
echo -e " [06] Fatos EXIF de las fotos"
echo -e " [07] Fuerza bruta a FTP"
echo -e " [08] Fuerza bruta a mysql"
echo -e " [09] Detección de firewall"
echo -e " [10] Fingerprint de Firewall "
echo -e " [00] Exit"
echo
echo -n -e "nse-nmap > "
read nsenmap

if [ "$nsenmap" == "01" ] || [ "$nsenmap" == "1" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap --script http-enum -sV $iphostname

elif [ "$nsenmap" == "02" ] || [ "$nsenmap" == "2" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap --script http-title -sV $iphostname


elif [ "$nsenmap" == "03" ] || [ "$nsenmap" == "3" ];
then
echo
echo -n -e "Enter Text File: "
read txtfile
echo
nmap --script dns.brute -sV $txtfile

elif [ "$nsenmap" == "04" ] || [ "$nsenmap" == "4" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap -A $iphostname

elif [ "$nsenmap" == "05" ] || [ "$nsenmap" == "5" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap -vv --script http-errors --script-args "httpspider.url=/docs/,httpspider.maxpagecount=3,httpspider.maxdepth=1" $iphostname

elif [ "$nsenmap" == "06" ] || [ "$nsenmap" == "6" ];
then
echo
echo -n -e "Enter IPv6-Address: "
read ipvsixaddress
echo
nmap --script http-exif-spider --script-args="http.max-cache-size=99999999" -Pn $ipvsixaddress

elif [ "$nsenmap" == "07" ] || [ "$nsenmap" == "7" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap --script ftp-brute $iphostname

elif [ "$nsenmap" == "08" ] || [ "$nsenmap" == "8" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap --script=mysql-brute $iphostname

elif [ "$nsenmap" == "09" ] || [ "$nsenmap" == "9" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap --script http-waf-detect --script-args="http-waf-detect.aggro,http-waf-detect.detectBodyChanges" $iphostname

elif [ "$nsenmap" == "10" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap --script http-waf-fingerprint $iphostname

elif [ "$nsenmap" == "00" ] || [ "$nsenmap" == "0" ];
then
exit

else
echo
echo -e "\033[1;31m[!] Elegiste mal...\033[1;0m"
sleep 1
bash $0
fi
