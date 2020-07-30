pkg install termux-api -y
#termux-toast -b cyan -b cyan -g center Termux Quickstart  #Removed Because Line Was Causing Script To Freeze
clear

read -p "





	╔═══════════════════════════════════════╗
	║         Termux Quickstart 1.1         ║
	╠═══════════════════════════════════════╣
	║  1. Update Packages                   ║
	║  2. Install Fedora                    ║
	║  3. Install Ubuntu                    ║
	║  4. Install Debian                    ║
	║  5. Install Kali                      ║
	║  6. Install Arch                      ║
	║  7. Coming Soon                       ║
	║  8. Coming Soon                       ║
	║  9. Work In Progress                  ║
	║  X. Close Program                     ║
	╚═══════════════════════════════════════╝
	   Option: ";
if [ $REPLY == "1" ]; then
    termux-toast -b cyan -g center Updating Software;
	apt update -y;
	apt upgrade -y;
	pkg update -y;
	pkg upgrade -y;
	apt install zip -y;
	apt install unzip -y;
fi

if [ $REPLY == "2" ]; then
    pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Fedora/fedora.sh && bash fedora.sh;
fi

if [ $REPLY == "3" ]; then
    pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh;
fi

if [ $REPLY == "4" ]; then
    pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Debian/debian.sh && bash debian.sh;
fi

if [ $REPLY == "5" ]; then
    pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Kali/kali.sh && bash kali.sh;
fi

if [ $REPLY == "6" ]; then
    pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Arch/armhf/arch.sh && bash arch.sh;
fi

if [ $REPLY == "7" ]; then
    echo not a command yet;
fi

if [ $REPLY == "8" ]; then
    echo not a command yet;
fi

if [ $REPLY == "9" ]; then
    echo not a command yet;
fi

if [ $REPLY == "X" ]; then
    echo Exiting Termux Quickstart;
fi

if [ $REPLY == "x" ]; then
    echo Exiting Termux Quickstart;
fi
echo Cleaning Up
rm TermuxQuickstart.sh
