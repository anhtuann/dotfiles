pacaur -S --noconfirm vim
pacaur -S --noconfirm tmux
pacaur -S --noconfirm unrar unzip
pacaur -S --noconfirm rsync
pacaur -S --noconfirm ranger

if [ $machine == "sandman" ]; then
    pacaur -S --noconfirm rxvt-unicode-terminfo
fi
