#!/bin/bash
#Installer for Kiwix serve
#
#Please copy any new zim files to the zims folder and they will be automatically updated
echo "\n\t\t\t Please open it with administrator (sudo) privileges"
echo ""
echo "Creating folders and copying..."
mkdir ~/bin/kiwix
cd ~/bin/kiwix
wget https://download.kiwix.org/release/kiwix-tools/kiwix-tools_linux-armhf-3.1.2.tar.gz
tar xf kiwix-tools_linux-armhf-3.1.2.tar.gz
cd kiwix-tools_linux-armhf-3.1.2
cp -vfr kiwix-tools_linux-i586-3.1.2 zims $HOME/bin/kiwix

chmod +x /etc/rc.local
echo "#Kiwix startup command" >> /etc/rc.local
echo $HOME/bin/kiwix/kiwix-tools_linux-i586-3.1.2/kiwix-serve $HOME/bin/kiwix/zims/*.zim $HOME/bin/kiwix/zims/*.zimaa >> /etc/rc.local 
sh /etc/rc.local
