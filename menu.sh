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
	echo -e " [01] Escaneos basicos"
	echo -e " [02] Escaneos avanzados"
	echo -e " [03] Escaneos con NSE"
	echo -e " [00] Atras (menu)"
	echo
	echo -n -e "nse-nmap > "
	read -r nsemenu2
		if [ "$nsemenu2" == "01" ] || [ "$nsemenu2" == "1" ];
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
		echo -e " Escaneos basicos de nmap"
		echo 
		echo -e " [01] Escaneo normal (sP)"
		echo -e " [02] Escaneo a todo un rango de ips"
		echo -e " [03] Escaneo SYN"
		echo -e " [04] Escaneo FIN"
		echo -e " [05] Escaneo UDP"
		echo -e " [00] Atras (menu)"
		echo
		echo -n -e "nse-nmap >"
		read -r nsebasico
			if [ "$nsebasico" == "01" ] || [ "$nsebasico" == "1" ];
			then
			echo
			echo -n -e "Escribe la IP o la pagina: "
			read -r iphostname
			echo
			nmap -sP "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nsebasico" == "02" ] || [ "$nsebasico" == "2" ];
			then
			echo
			echo -n -e "Escribe el rango de ips: "
			read -r iphostname
			echo
			nmap -sP "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nsebasico" == "03" ] || [ "$nsebasico" == "3" ];
			then
			echo
			echo -n -e "Escribe la IP o la pagina: "
			read -r iphostname
			echo
			nmap -sS "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nsebasico" == "04" ] || [ "$nsebasico" == "4" ];
			then
			echo
			echo -n -e "Escribe la IP o la pagina: "
			read -r iphostname
			echo
			nmap -sF "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nsebasico" == "05" ] || [ "$nsebasico" == "5" ];
			then
			echo
			echo -n -e "Escribe la IP o la pagina: "
			read -r iphostname
			echo
			nmap -sU "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nsebasico" == "00" ] || [ "$nsebasico" == "0" ];
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
        if [ "$nsemenu2" == "02" ] || [ "$nsemenu2" == "2" ];
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
		echo -e " Escaneos avanzados de nmap"
		echo 
		echo -e " [01] Escaneo de protocolos"
		echo -e " [02] Escaneo de servicios"
		echo -e " [03] Escaneo fingerprint (root)"
		echo -e " [04] Escaneo agresivo"
		echo -e " [05] Escaneo de traceroute (root)"
		echo -e " [06] Escaneo de whois"
		echo -e " [00] Atras (menu)"
		echo
		echo -n -e "nse-nmap >"
		read -r nseavanzado
			if [ "$nseavanzado" == "01" ] || [ "$nseavanzado" == "1" ];
			then

			echo
			echo -n -e "Escribe la IP o la pagina: "
			read -r iphostname
			echo
			nmap -sO "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nseavanzado" == "02" ] || [ "$nseavanzado" == "2" ];
			then
			echo
			echo -n -e "Escribe el rango de ips: "
			read -r iphostname
			echo
			nmap -sV "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nseavanzado" == "03" ] || [ "$nseavanzado" == "3" ];
			then
			echo
			echo -n -e "Escribe el rango de ips: "
			read -r iphostname
			echo
			nmap -O "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nseavanzado" == "04" ] || [ "$nseavanzado" == "4" ];
			then
			echo
			echo -n -e "Escribe el rango de ips: "
			read -r iphostname
			echo
			nmap -sS "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0" 

			elif [ "$nseavanzado" == "05" ] || [ "$nseavanzado" == "5" ];
			then
			echo
			echo -n -e "Escribe el rango de ips: "
			read -r iphostname
			echo
			nmap --traceroute "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0" 

			elif [ "$nseavanzado" == "06" ] || [ "$nseavanzado" == "6" ];
			then
			echo
			echo -n -e "Escribe el rango de ips: "
			read -r iphostname
			echo
			nmap --script whois-ip.nse -d "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0" 

			elif [ "$nseavanzado" == "00" ] || [ "$nseavanzado" == "0" ];
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
        if [ "$nsemenu2" == "03" ] || [ "$nsemenu2" == "3" ];
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
		echo -e " [04] Encuentra errores HTTP"
		echo -e " [05] Fatos EXIF de las fotos"
		echo -e " [06] Fuerza bruta a FTP"
		echo -e " [07] Fuerza bruta a mysql"
		echo -e " [08] Detección de firewall"
		echo -e " [09] Fingerprint de Firewall "
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
			nmap -vv --script http-errors --script-args "httpspider.url=/docs/,httpspider.maxpagecount=3,httpspider.maxdepth=1" "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nsenmap" == "05" ] || [ "$nsenmap" == "5" ];
			then
			echo
			echo -n -e "Enter IPv6-Address: "
			read -r ipvsixaddress
			echo
			nmap --script http-exif-spider --script-args="http.max-cache-size=99999999" -Pn "$ipvsixaddress"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nsenmap" == "06" ] || [ "$nsenmap" == "6" ];
			then
			echo
			echo -n -e "Enter (IP or Hostname): "
			read -r iphostname
			echo
			nmap --script ftp-brute "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nsenmap" == "07" ] || [ "$nsenmap" == "7" ];
			then
			echo
			echo -n -e "Enter (IP or Hostname): "
			read -r iphostname
			echo
			nmap --script mysql-brute.nse -Pn "$iphostname"
			echo
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nsenmap" == "08" ] || [ "$nsenmap" == "8" ];
			then
			echo
			echo -n -e "Enter (IP or Hostname): "
			read -r iphostname
			echo
			nmap --script http-waf-detect --script-args="http-waf-detect.aggro,http-waf-detect.detectBodyChanges" "$iphostname"
			read -rsp $'Press any key to continue...\n' -n 1 key
			bash "$0"

			elif [ "$nsenmap" == "09" ] || [ "$nsenmap" == "9" ];
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
			fi
			fi
			fi

	else
        if [ "$nsemenu2" == "04" ] || [ "$nsemenu2" == "4" ];
		then

		echo -e "\033[1;31m[!] Atras..\033[1;0m"
		bash "$0"
		fi

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
