  #!/bin/bash
# Demo-menu shell script
## ----------------------------------
# Define variables
# ----------------------------------
EDITOR=nano
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'
 
# ----------------------------------
# User defined function
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

one(){
	echo "one() called"
        pause
}
 
# do something in two()
two(){
	echo "two() called"
        pause
}
 
# function to display menus
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	echo "  MENU-SOLOLINUX.ES  "
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Set Terminal"
	echo "2. Reset Terminal"
	echo "3. Exit"
}
# Lee la accion sobre el teclado y la ejecuta.
# Invoca el () cuando el usuario selecciona 1 en el menú.
# Invoca a los dos () cuando el usuario selecciona 2 en el menú.
# Salir del menu cuando el usuario selecciona 3 en el menú.
read_options(){
	local choice
	read -p "Enter choice [ 1 - 3] " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
# ----------------------------------------------
# Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------
trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Main logic - infinite loop
# ------------------------------------
while true
do
 
	show_menus
	read_options
done
