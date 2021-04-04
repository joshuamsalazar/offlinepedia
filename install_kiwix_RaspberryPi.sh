#!/bin/bash
#Installer for Kiwix serve
#
#Please copy any new zim files to the zims folder and they will be automatically updated
echo "\n\t\t\t Please open it with administrator (sudo) privileges"
echo ""
echo "Creating folders and copying..."
mkdir -p ~/bin/kiwix
cd ~/bin/kiwix
wget https://download.kiwix.org/release/kiwix-tools/kiwix-tools_linux-armhf-3.1.2.tar.gz
tar xf kiwix-tools_linux-armhf-3.1.2.tar.gz
cd kiwix-tools_linux-armhf-3.1.2
wget https://download.kiwix.org/zim/vikidia/vikidia_es_all_maxi_2021-03.zim
sudo ./kiwix-serve vikidia_es_all_maxi_2021-03.zim
#cp -vfr kiwix-tools_linux-i586-3.1.2 zims $HOME/bin/kiwix

sudo chmod 777 /etc/rc.local
echo "#Kiwix startup command" >> /etc/rc.local
echo $HOME/bin/kiwix/kiwix-tools_linux-i586-3.1.2/kiwix-serve $HOME/bin/kiwix/zims/*.zim $HOME/bin/kiwix/zims/*.zimaa >> /etc/rc.local 
#sh /etc/rc.local
