pkg install termux-api -y
#termux-toast -b cyan -b cyan -g center Termux Quickstart #Removed Because Line Was Causing Script To Freeze
clear

echo 	  ╔═════════╗
echo 	  ║         ║
echo ╔════╬════╗    ║
echo ║    ║    ║    ║
echo ║    ╚════╬════╝
echo ║         ║
echo ╚═════════╝
echo Termux Quickstart
sleep $5

read -p "
╔═══════════════════════════════════════╗
║               Main Menu               ║
╠═══════════════════════════════════════╣
║  1. Update Packages                   ║
║  2. Install OSes                      ║
║  3. Uninstall OSes                    ║
║  4. Start Webserver                   ║
║  5. -                                 ║
║  6. -                                 ║
║  7. -                                 ║
║  8. -                                 ║
║  9. -                                 ║
║  X. Close Program                     ║
╚═══════════════════════════════════════╝
	   Option: ";
if [ $REPLY == "1" ]; then
    termux-toast -b cyan -g center Updating Software;
	apt update -y;
	apt upgrade -y;
	pkg update -y;
	pkg upgrade -y;
fi
if [ $REPLY == "2" ]; then
	read -p "
	╔═══════════════════════════════════════╗
	║             OS Installers             ║
	╠═══════════════════════════════════════╣
	║  1. Fedora                            ║
	║  2. Ubuntu                            ║
	║  3. Debian                            ║
	║  4. Kali                              ║
	║  5. Arch                              ║
	║  6. -                                 ║
	║  7. -                                 ║
	║  8. -                                 ║
	║  9. -                                 ║
	║  X. Close Program                     ║
	╚═══════════════════════════════════════╝
		   Option: ";
    if [ $REPLY == "1" ]; then
		pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Fedora/fedora.sh && bash fedora.sh;
	fi
	if [ $REPLY == "2" ]; then
		pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh;
	fi
	if [ $REPLY == "3" ]; then
		pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Debian/debian.sh && bash debian.sh;
	fi
	if [ $REPLY == "4" ]; then
		pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Kali/kali.sh && bash kali.sh;
	fi
fi




if [ $REPLY == "X" ]; then
    echo Exiting Termux Quickstart;
fi

if [ $REPLY == "x" ]; then
    echo Exiting Termux Quickstart;
fi
echo ╔═════════╗
echo ║ Exiting ║
echo ╚═════════╝
