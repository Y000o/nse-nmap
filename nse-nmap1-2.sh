#!/usr/bin/bash
# Nse-nmap v1.1
# Author: LuisMadero
if [ "$(which nmap)" == "" ]; then
        echo -n -e "nmap need to be installed [y/N] "
        read -r yorn
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
echo
echo -e " [01] Herramientas Nmap"
echo -e " [02] Herramientas sqlmap"
echo -e " [03] Acerca de mi"
echo -e " [04] Salir"
echo
echo -n -e "nse-nmap > "
read -r nsemenu

if [ "$nsemenu" == "01" ] || [ "$nsemenu" == "1" ];
then
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
echo
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
echo -e " [00] Atras (menu)"
echo
echo -n -e "nse-nmap > "
read -r nsenmap

if [ "$nsenmap" == "01" ] || [ "$nsenmap" == "1" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read -r iphostname
echo
nmap --script http-enum -sV "$iphostname"
read -rsp $'Press any key to continue...\n' -n 1 key
bash "$0"

elif [ "$nsenmap" == "02" ] || [ "$nsenmap" == "2" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read -r iphostname
echo
nmap --script http-title -sV "$iphostname"
read -rsp $'Press any key to continue...\n' -n 1 key
bash "$0"

elif [ "$nsenmap" == "03" ] || [ "$nsenmap" == "3" ];
then
echo
echo -n -e "Enter Text File: "
read -r txtfile
echo
nmap --script dns-brute.nse -sV "$txtfile"
read -rsp $'Press any key to continue...\n' -n 1 key
bash "$0"

elif [ "$nsenmap" == "04" ] || [ "$nsenmap" == "4" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read -r iphostname
echo
nmap -A "$iphostname"
read -rsp $'Press any key to continue...\n' -n 1 key
bash "$0"

elif [ "$nsenmap" == "05" ] || [ "$nsenmap" == "5" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read -r iphostname
echo
nmap -vv --script http-errors --script-args "httpspider.url=/docs/,httpspider.maxpagecount=3,httpspider.maxdepth=1" "$iphostname"
read -rsp $'Press any key to continue...\n' -n 1 key
bash "$0"

elif [ "$nsenmap" == "06" ] || [ "$nsenmap" == "6" ];
then
echo
echo -n -e "Enter IPv6-Address: "
read -r ipvsixaddress
echo
nmap --script http-exif-spider --script-args="http.max-cache-size=99999999" -Pn "$ipvsixaddress"
read -rsp $'Press any key to continue...\n' -n 1 key
bash "$0"

elif [ "$nsenmap" == "07" ] || [ "$nsenmap" == "7" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read -r iphostname
echo
nmap --script ftp-brute "$iphostname"
read -rsp $'Press any key to continue...\n' -n 1 key
bash "$0"

elif [ "$nsenmap" == "08" ] || [ "$nsenmap" == "8" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read -r iphostname
echo
nmap --script mysql-brute.nse -Pn "$iphostname"
echo
read -rsp $'Press any key to continue...\n' -n 1 key
bash "$0"

elif [ "$nsenmap" == "09" ] || [ "$nsenmap" == "9" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read -r iphostname
echo
nmap --script http-waf-detect --script-args="http-waf-detect.aggro,http-waf-detect.detectBodyChanges" "$iphostname"
read -rsp $'Press any key to continue...\n' -n 1 key
bash "$0"

elif [ "$nsenmap" == "10" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read -r iphostname
echo
nmap --script http-waf-fingerprint "$iphostname"
read -rsp $'Press any key to continue...\n' -n 1 key
bash "$0"

elif [ "$nsenmap" == "00" ] || [ "$nsenmap" == "0" ];
then
echo -e "\033[1;31m[!] Atras..\033[1;0m"
bash "$0"

else
echo
echo -e "\033[1;31m[!] Elegiste mal...\033[1;0m"
sleep 1
bash "$0"
fi
else
        if [ "$nsemenu" == "02" ] || [ "$nsemenu" == "2" ];
then
echo
echo -e "\033[1;31m[!] Proximamente...\033[1;0m"
sleep 1
bash "$0"

elif [ "$nsemenu" == "03" ] || [ "$nsemenu" == "3" ];
then
echo
echo -e "\033[1;31m[!] Creado por LuisMadero... \033[1;0m"
sleep 10
bash "$0"
elif [ "$nsemenu" == "04" ] || [ "$nsemenu" == "4" ];
then
exit
fi
fi
