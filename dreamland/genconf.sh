git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

ln -sf ~/Projects/dotfiles/dreamland/confs/xinitrc_conf ~/.xinitrc

#vim
ln -sf ~/Projects/dotfiles/dreamland/confs/vimrc_conf ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki
vim +PluginInstall +qall

ln -sf ~/Projects/dotfiles/dreamland/confs/Xresources_conf ~/.Xresources

mkdir ~/.i3
mkdir -p ~/.config/i3status
ln -sf ~/Projects/dotfiles/dreamland/confs/i3_conf ~/.i3/config
ln -sf ~/Projects/dotfiles/dreamland/confs/i3status_conf ~/.config/i3status/config

mkdir -p ~/.config/volumeicon
ln -sf ~/Projects/dotfiles/dreamland/confs/volumeicon_conf ~/.config/volumeicon/volumeicon

ln -sf ~/Projects/dotfiles/dreamland/confs/vimperatorrc_conf ~/.vimperatorrc

sudo ln -sf ~/Projects/dotfiles/dreamland/confs/libinput_conf /etc/X11/xorg.conf.d/50-touchpad.conf


ln -sf ~/Projects/dotfiles/dreamland/confs/asoundrc_conf ~/.asoundrc

ln -sf ~/Projects/dotfiles/dreamland/confs/tmux_conf ~/.tmux.conf

if [ $environment == "real" ]; then
    sudo ln -sf /home/anhtuann/Projects/dotfiles/dreamland/confs/bumblebee_conf /etc/bumblebee/bumblebee.conf
    sudo ln -sf ~/Projects/dotfiles/dreamland/confs/bumblebee_nvidia_conf /etc/bumblebee/xorg.conf.nvidia
    sudo ln -sf ~/Projects/dotfiles/dreamland/confs/tlp_conf /etc/default/tlp
    sudo systemctl enable tlp.service
    sudo systemctl enable tlp-sleep.service
    sudo systemctl disable systemd-rfkill.service
    sudo ln -sf ~/Projects/dotfiles/dreamland/confs/virtualbox_conf /etc/modules-load.d/virtualbox.conf
fi

sudo ln -sf ~/Projects/dotfiles/dreamland/confs/pacman_conf /etc/pacman.conf
pacaur -Syu --noconfirm

mkdir ~/.config/dunst
ln -sf ~/Projects/dotfiles/dreamland/confs/dunst_conf /home/anhtuann/.config/dunst/dunstrc

ranger --copy-config=all
ln -sf /home/anhtuann/Projects/dotfiles/dreamland/confs/ranger_rifle_conf /home/anhtuann/.config/ranger/rifle.conf
