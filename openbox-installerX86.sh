#!/bin/bash
###########################################################
## 			    Openbox Installer by Randalltux          ##
##			     email: randalltux@yahoo.co.id           ##
##               twitter: @randalltux                    ##
###########################################################
# Reference http://forum.ubuntu-fr.org/viewtopic.php?id=399144
# run this script with sudo
# ex: sudo sh openbox-installer.sh
# This scripts it's just for KALI LINUX or ROOT USER ONlY!!!!
# Please fork this scripts
# Include: Numix Gtk themes, Numix-Circle icons , tint2rc numix , some wallpaper from numix
# Thanks to: MyBeloved @Putriayuerlyn , M.Claudio Delvin aka Cyberking , Iyan_Squid aka XBoot , @yogo_arp , Black Orion,
#                           Etc Session , Bagas Purwohandoyo , Aldy Torvalds aka alpoah , and YOU!
## Updating repository
echo "Updating Repositories"
apt-get update && apt-get upgrade
echo 'Update success'

## Installing openbox and supporting applications
echo "Installing openbox and supporting applications"
apt-get install openbox gmrun lxappearance thunar obmenu nitrogen tint2 xcompmgr xfce4-power-manager git git-core geany ttf-droid gtk2-engines-murrine gtk2-engines-pixbuf gtk3-engines-unico -y
echo "Install success with no errors =)"

## Installing compton and configuring cb-compositor
echo "Download & installing compton"
cd /root && wget https://www.dropbox.com/s/r8rqh26ixazgt10/compton-git_20120926-1_i386.deb && dpkg -i compton-git_20120926-1_i386.deb && apt-get install -f
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/compton.conf && mv compton.conf /root/.config/
cd /usr/bin && wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/cb-compositor && wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/cb-include.cfg && cd /root
echo "install & configuring compton success"

## Configuring openbox , autostart , menu
echo "Create Openbox directory"
mkdir -p ~/.config/openbox/ && cd ~/.config/openbox/
echo "Copying autostart file"
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/autostart
echo "Copying rc.xml"
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/rc.xml
echo "Copying menu.xml"
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/menu.xml
echo "Copying file success"

## Configuring tint2 panel, themes and icons from numix
echo "Downloading themes"
mkdir ~/.themes && cd ~/.themes && wget https://launchpad.net/~numix/+archive/ppa/+files/numix-gtk-theme_1.9~precise.tar.gz && tar xvfz numix-gtk-theme_1.9~precise.tar.gz && cd numix-gtk-theme && mv Numix ~/.themes && cd /root && rm -rf ~/.themes/numix-gtk-theme && rm ~/.themes/numix-gtk-theme_1.9~precise.tar.gz
echo "Themes installed"
echo "Downloading icons"
mkdir ~/.icons && cd ~/.icons && wget https://www.dropbox.com/s/8uoe1wx1zbez27f/Numix-icon.tar.gz && tar xvfz Numix-icon.tar.gz && rm Numix-icon.tar.gz
echo "Icons installed"
echo "Configuring tint2 panel"
mkdir ~/.config/tint2 && cd ~/.config/tint2 && wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/tint2rc && cd /root
echo "Tint2 installed"
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/gtkrc-2.0
echo "Your Openbox Looks Awesome now..."
echo "p"
echo "pl"
echo "ple"
echo "pleas"
echo "please"
echo "please w"
echo "please wa"
echo "please wai"
echo "please wait"
echo "please wait."
echo "please wait.."
echo "please wait..."
echo "Openbox will generating menu ( but not kali linux tools :) i will update for it!)"
echo "regenerating menu......."
wget https://raw.githubusercontent.com/randalltuxarc/openbox-installer-kali-linux/master/misc/obmenugen && sudo mv obmenugen /usr/bin/ && obmenugen
echo "Generating menu successfully..."
## Complete
echo "Your openbox has been installed.. Now logout and login to Openbox as your WM :)"
echo "Thanks for using this script"

