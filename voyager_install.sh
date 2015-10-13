#Graphic drivers
sudo pacman -S --noconfirm xf86-video-vesa xf86-video-intel xf86-video-ati xf86-video-nouveau

#Xserver
sudo pacman -S --noconfirm xorg-server xorg-server-utils xorg-apps
sudo pacman -S --noconfirm xorg-xinit

#i3 initialisation
sudo pacman -S --noconfirm i3
echo exec i3 > ~/.xinitrc

#git for pacaur install
sudo pacman -S --noconfirm git
git config --global push.default simple

#pacaur install
mkdir /tmp/aur && cd /tmp/aur
git clone http://aur.archlinux.org/cower.git
git clone http://aur.archlinux.org/pacaur.git
gpg --recv-keys 1EB2638FF56C0C53
cd cower && makepkg -s
sudo pacman -U cower*.pkg.tar.xz
cd ../aur && makepkg -s
sudo pacman -U pacaur*.pkg.tar.xz
cd

#various applications for i3+firefox
pacaur -S --noconfirm rxvt-unicode
pacaur -S --noconfirm xf86-input-libinput 
pacaur -S --noconfirm ttf-hack
pacaur -S --noconfirm firefox

#dotfiles downloaded from github
mkdir ~/Projects && cd ~/Projects
git clone https://github.com/anhtuann/dotfiles.git

#Xresources and bashrc added
ln -s ~/Projects/dotfiles/Xresources/Xresources ~/.Xresources
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
ln -sf ~/Projects/dotfiles/voyager/bash/bashrc ~/.bashrc
ln -sf ~/Projects/dotfiles/voyager/Xresources/Xresources ~/.Xresources
source ~/.bashrc
xrdb -load ~/.Xresources

#i3 config added
ln -sf ~/Projects/dotfiles/voyager/i3/i3_config ~/.i3/config
pacaur -S --noconfirm rofi scrot playerctl feh volumeicon dunst
mkdir ~/.config/i3status
ln -sf ~/Projects/dotfiles/voyager/i3/i3status_config ~/.config/i3status/config

#various utilities
pacaur -S --noconfirm alsa-utils
pacaur -S --noconfirm xclip

#ssh keys
pacaur -S --noconfirm openssh
ssh-keygen
echo 'eval $(ssh-agent)' >> ~/.xinitrc

#vimperator
ln -sf ~/Projects/dotfiles/voyager/vimperator/vimperatorrc ~/.vimperatorrc
pacaur -S --noconfirm libmtp android-file-transfer
pacaur -S --noconfirm mpv
