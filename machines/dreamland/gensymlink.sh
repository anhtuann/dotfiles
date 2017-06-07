ln -sf ~/Projects/dotfiles/machines/dreamland/confs/xinitrc_conf ~/.xinitrc
ln -sf ~/Projects/dotfiles/machines/dreamland/confs/vimrc_conf ~/.vimrc
ln -sf ~/Projects/dotfiles/machines/dreamland/confs/Xresources_conf ~/.Xresources
ln -sf ~/Projects/dotfiles/machines/dreamland/confs/i3_conf ~/.i3/config
ln -sf ~/Projects/dotfiles/machines/dreamland/confs/i3status_conf ~/.config/i3status/config
ln -sf ~/Projects/dotfiles/machines/dreamland/confs/volumeicon_conf ~/.config/volumeicon/volumeicon
ln -sf ~/Projects/dotfiles/machines/dreamland/confs/vimperatorrc_conf ~/.vimperatorrc
ln -sf ~/Projects/dotfiles/machines/dreamland/confs/tmux_conf ~/.tmux.conf
ln -sf ~/Projects/dotfiles/machines/dreamland/confs/dunst_conf ~/.config/dunst/dunstrc
ln -sf ~/Projects/dotfiles/machines/dreamland/confs/ranger_rifle_conf ~/.config/ranger/rifle.conf
ln -sf ~/Projects/dotfiles/machines/dreamland/confs/ranger_rc_conf ~/.config/ranger/rc.conf
ln -sf ~/Projects/dotfiles/machines/dreamland/confs/zshrc_conf ~/.zshrc
ln -sf ~/Projects/dotfiles/machines/dreamland/confs/mpv.conf ~/.config/mpv/mpv.conf

mkdir ~/.screenlayout
ln -sf ~/Projects/useful-scripts/screenlayout/gt7510.sh ~/.screenlayout/gt7510.sh
ln -sf ~/Projects/useful-scripts/screenlayout/standard.sh ~/.screenlayout/standard.sh
sudo ln -sf ~/Projects/dotfiles/machines/dreamland/confs/virtualoutput_conf /etc/X11/xorg.conf.d/60-virtualoutput.conf

sudo ln -sf ~/Projects/dotfiles/machines/dreamland/confs/libinput_conf /etc/X11/xorg.conf.d/50-touchpad.conf
sudo ln -sf ~/Projects/dotfiles/machines/dreamland/confs/pacman_conf /etc/pacman.conf

if ! pacaur -Qi virtualbox-guest-utils > /dev/null 2>&1; then
    echo "We are on a real machine. Symlinking hardware confs files"
    sudo ln -sf ~/Projects/dotfiles/machines/dreamland/confs/bumblebee_conf /etc/bumblebee/bumblebee.conf
    sudo ln -sf ~/Projects/dotfiles/machines/dreamland/confs/bumblebee_nvidia_conf /etc/bumblebee/xorg.conf.nvidia
    sudo ln -sf ~/Projects/dotfiles/machines/dreamland/confs/tlp_conf /etc/default/tlp
    sudo ln -sf ~/Projects/dotfiles/machines/dreamland/confs/virtualbox_conf /etc/modules-load.d/virtualbox.conf
fi
