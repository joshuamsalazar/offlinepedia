#!/bin/bash
#Installer for Kiwix serve over Desktop linux
#
#Please copy any new zim files to the zims folder and they will be automatically updated
echo "\n\n\n\t\t\t Please open it with administrator (sudo) privileges"
echo "\n\n\n"
echo "Creating folders and copying..."
mkdir -p ~/bin/kiwix
cd ~/bin/kiwix
wget https://download.kiwix.org/release/kiwix-tools/kiwix-tools_linux-i586-3.1.2.tar.gz
tar xf kiwix-tools_linux-i586-3.1.2.tar.gz

mkdir zims
cd zims
wget https://download.kiwix.org/zim/vikidia/vikidia_es_all_maxi_2021-03.zim
cd ..
#cp -vfr kiwix-tools_linux-i586-3.1.2 zims $HOME/bin/kiwix

#Testear
cd ~/bin/kiwix/kiwix-tools_linux-i586-3.1.2
sudo ./kiwix-serve ../zims/*.zim # ../zims/*.zimaa


chmod +x /etc/rc.local
echo "#Kiwix startup command" >> /etc/rc.local
echo $HOME/bin/kiwix/kiwix-tools_linux-i586-3.1.2/kiwix-serve $HOME/bin/kiwix/zims/*.zim $HOME/bin/kiwix/zims/*.zimaa >> /etc/rc.local 
sh /etc/rc.local

