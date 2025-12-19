sudo su

pacman -Syu

pacman -S sddm
systemctl enable sddm
pacman -S sddm-kcm

pacman -S plasma-desktop kde-applications
#ark
#dolphin
#ffmpegthumbs
#gwenview
#kamoso
#kate
#kcalc
#kdegraphics-thumbnailers
#kdesdk-thumbnailers
#kompare
#konqueror
#konsole
#ktorrent
#kwrite
#okular
#spectacle

pacman -S falkon bitwarden nordvpn-bin libreoffice-still zsh zsh-autosuggestions

pacman -S --needed git base-devel 
groupadd -r nordvpn && usermod -aG nordvpn jf

exit

mkdir ~/workspace
cd ~/workspace/
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
yay -yay -S zen-browser-bin

pacman -S ssh-utils

# bluetooth
pacman -S bluez
pacman -R gnome-bluetooth
pacman -S dbus
pacman -S bluez-lib
pacman -S bluez-libs
pacman -S bluez-plugins
pacman -S bluez-utils
pacman -S --needed --asdeps bluez-obex
# as user
exit
systemctl --user enable obex
systemctl --user start obex

sudo su

reboot
