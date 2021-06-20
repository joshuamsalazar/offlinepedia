#!/bin/bash

sudo chmod 777 /etc/rc.local
echo "#Kiwix startup command" >> /etc/rc.local
echo $HOME/bin/kiwix/kiwix-tools_linux-armhf-3.1.2/kiwix-serve $HOME/bin/kiwix/zims/*.zim >> /etc/rc.local # $HOME/bin/kiwix/zims/*.zimaa >> /etc/rc.local 
sudo sh /etc/rc.local

read -p "\n\n\t\t Kiwix instalado correctamente: ¡Disfruta de tu OfflinePedia! \n\n Presiona ENTER para abrir el lector"

chromium-browser 127.0.0.1 &
