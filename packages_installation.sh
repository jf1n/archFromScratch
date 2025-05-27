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

reboot
