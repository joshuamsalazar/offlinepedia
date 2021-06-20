#!/bin/bash
#Installer for Kiwix serve
#
#Please copy any new zim files to the zims folder and they will be automatically updated
#echo "\n\t\t\t Please open it with administrator (sudo) privileges"
echo ""
echo "Creating folders and copying..."
mkdir -p ~/bin/kiwix
cd ~/bin/kiwix
wget https://download.kiwix.org/release/kiwix-tools/kiwix-tools_linux-armhf-3.1.2.tar.gz
tar xf kiwix-tools_linux-armhf-3.1.2.tar.gz
cd kiwix-tools_linux-armhf-3.1.2
cd ..
mkdir zims
cd zims
wget https://download.kiwix.org/zim/vikidia/vikidia_es_all_maxi_2021-03.zim
#sudo ./kiwix-serve vikidia_es_all_maxi_2021-03.zim &

sudo chmod 777 /etc/rc.local
echo "#Kiwix startup command" >> /etc/rc.local
echo $HOME/bin/kiwix/kiwix-tools_linux-armhf-3.1.2/kiwix-serve $HOME/bin/kiwix/zims/*.zim >> /etc/rc.local # $HOME/bin/kiwix/zims/*.zimaa >> /etc/rc.local 
sudo sh /etc/rc.local

read -p "\n\n\t\t Kiwix instalado correctamente: ¡Disfruta de tu OfflinePedia! \n\n Presiona ENTER para abrir el lector"

chromium-browser 127.0.0.1 &
