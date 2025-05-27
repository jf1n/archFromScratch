sudo su

pacman -Syu

pacman -S sddm
systemctl enable sddm
pacman -S sddm-kcm

pacman -S plasma-desktop kde-applications
pacman -S falkon

pacman -S --needed git base-devel bitwarden nordvpn-bin libreoffice-still zsh zsh-autosuggestions

groupadd -r nordvpn && usermod -aG nordvpn jf

exit

mkdir ~/workspace
cd ~/workspace/
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
yay -yay -S zen-browser-bin

reboot
