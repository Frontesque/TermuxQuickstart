pkg install termux-api -y
termux-toast -g center Termux Quickstart
termux-notification --title Termux Quickstart --content Termux Quickstart Is Running
clear
read -p "1. Install Reccomended Packages
2. Install Fedora
3. Install Ubuntu
4. Install Debian
5. Install Kali
6. Install Arch
7. Coming Soon
8. Coming Soon
9. Coming Soon

Option: ";
if [ $REPLY == "1" ]; then
    apt update -y;
	apt upgrade -y;
	pkg update -y;
	pkg upgrade -y;

	pkg install termux-api -y;
	termux-toast -g center Installing Software;
	apt install git -y;
	apt install wget -y;
	apt install zip -y;
	apt install unzip -y;
	apt install python -y;
	apt install python2 -y;
	apt install apache2 -y;
	apt install proot -y;
	apt install sudo -y;

	apt update -y;
	apt upgrade -y;
	pkg update -y;
	pkg upgrade -y;
fi

if [ $REPLY == "2" ]; then
    pkg install wget openssl-tool proot tar -y &&
	hash -r &&
	wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Fedora/fedora.sh
	&& bash fedora.sh;
fi

if [ $REPLY == "3" ]; then
    pkg install wget openssl-tool proot tar -y &&
	hash -r &&
	wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh;
fi

if [ $REPLY == "4" ]; then
    pkg install wget openssl-tool proot tar -y &&
	hash -r &&
	wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Debian/debian.sh &&
	bash debian.sh;
fi

if [ $REPLY == "5" ]; then
    pkg install wget openssl-tool proot tar -y &&
	hash -r &&
	wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Kali/kali.sh &&
	bash kali.sh;
fi

if [ $REPLY == "6" ]; then
    pkg install wget openssl-tool proot tar -y &&
	hash -r &&
	wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Installer/Arch/armhf/arch.sh &&
	bash arch.sh;
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
