#option configuration
PS3='Which machine do you wish to install : '
options=("dreamland" "voyager")
select opt in "${options[@]}"
do
    case $opt in
        "dreamland")
            machine="dreamland"
	    break
            ;;
        "voyager")
            machine="voyager"
	    break
            ;;
        *) echo invalid option;;
    esac
done

PS3='Which environment is it :'
options=("test" "real")
select opt in "${options[@]}"
do
    case $opt in
        "test")
            environment="test"
            break
            ;;
        "real")
            environment="real"
            break
            ;;
        *) echo invalid option;;
    esac
done

echo $machine
echo $environment

#sort mirrors by speed
if [ $environment == "real" ]
    then
        echo 'Sorting mirrors by speed'
        sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
        sudo sh -c 'rankmirrors -n 5 /etc/pacman.d/mirrorlist.bak > /etc/pacman.d/mirrorlist'
        sudo pacman -Syu
fi

#ssh keys
sudo pacman -S --noconfirm openssh
ssh-keygen
echo 'eval $(ssh-agent)' >> ~/.xinitrc

#graphic drivers
if [ $environment == "test" ]
    then
        echo 'Installing virtualbox graphic driver'
        sudo pacman -S --noconfirm virtualbox-guest-utils
elif [ $machine == "voyager" ]
    then
        echo 'Installing generic graphic drivers'
        sudo pacman -S --noconfirm xf86-video-vesa xf86-video-intel xf86-video-ati xf86-video-nouveau
elif [ $machine == "dreamland" ]
    then
        echo 'Installing nvidia driver'
        sudo pacman -S --noconfirm nvidia
fi

#Xserver
sudo pacman -S --noconfirm xorg-server xorg-server-utils xorg-apps
sudo pacman -S --noconfirm xorg-xinit

#i3 initialisation
sudo pacman -S --noconfirm i3
echo exec i3 > ~/.xinitrc

#git for pacaur install
sudo pacman -S --noconfirm git
git config --global push.default simple
sed -i '1s/^/eval $(ssh-agent)\n/' ~/.xinitrc

#pacaur install
sudo pacman -S --noconfirm expac
mkdir /tmp/aur
cd /tmp/aur
git clone http://aur.archlinux.org/cower.git
git clone http://aur.archlinux.org/pacaur.git
gpg --recv-keys 1EB2638FF56C0C53
cd cower
makepkg -s
sudo pacman -U --noconfirm cower*.pkg.tar.xz
cd ../pacaur
makepkg -s
sudo pacman -U --noconfirm pacaur*.pkg.tar.xz
cd
mkdir -p ~/.config/pacaur
echo "displaybuildfiles=none" > ~/.config/pacaur/config

#various applications for i3+firefox
pacaur -S --noconfirm rxvt-unicode
pacaur -S --noconfirm xf86-input-libinput 
pacaur -S --noconfirm ttf-hack
pacaur -S --noconfirm firefox
pacaur -S --noconfirm xbacklight kbdlight

#dotfiles downloaded from github
mkdir ~/Projects 
cd ~/Projects
git clone https://github.com/anhtuann/dotfiles.git

#useful scripts downloaded from github
git clone https://github.com/anhtuann/useful-scripts.git

#vim
pacaur -S --noconfirm vim
ln -sf ~/Projects/dotfiles/$machine/vim/vimrc ~/.vimrc

#Xresources and bashrc added
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
ln -sf ~/Projects/dotfiles/$machine/bash/bashrc ~/.bashrc
ln -sf ~/Projects/dotfiles/$machine/Xresources/Xresources ~/.Xresources
source ~/.bashrc

#i3 config added
mkdir ~/.i3
ln -sf ~/Projects/dotfiles/$machine/i3/i3_config ~/.i3/config
pacaur -S --noconfirm rofi scrot playerctl feh volumeicon dunst
mkdir -p ~/.config/i3status
ln -sf ~/Projects/dotfiles/$machine/i3/i3status_config ~/.config/i3status/config

#various utilities
pacaur -S --noconfirm alsa-utils
pacaur -S --noconfirm xclip
pacaur -S --noconfirm transmission-cli
pacaur -S --noconfirm imagemagick
pacaur -S --noconfirm ttf-mplus
pacaur -S --noconfirm unrar

#vimperator
ln -sf ~/Projects/dotfiles/$machine/vimperator/vimperatorrc ~/.vimperatorrc

#mtp support
pacaur -S --noconfirm libmtp android-file-transfer

#multimedia
pacaur -S --noconfirm mpv
pacaur -S --noconfirm gstreamer gst-libav gst-plugins-good

#coding
pacaur -S --noconfirm python python-virtualenv python-virtualenvwrapper

#usb manager
pacaur -S --noconfirm udisks2 udiskie ntfs-3g dosfstools

#file manager
pacaur -S --noconfirm ranger
