git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

ln -sf ~/Projects/dotfiles/dreamland/xinitrc_conf ~/.xinitrc

#vim
ln -sf ~/Projects/dotfiles/dreamland/vimrc_conf ~/.vimrc
mkdir -p .vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki
vim +PluginInstall +qall

ln -sf ~/Projects/dotfiles/dreamland/Xresources_conf ~/.Xresources

mkdir ~/.i3
mkdir -p ~/.config/i3status
ln -sf ~/Projects/dotfiles/dreamland/i3_conf ~/.i3/config
ln -sf ~/Projects/dotfiles/dreamland/i3status_conf ~/.config/i3status/config

mkdir -p ~/.config/volumeicon
ln -sf ~/Projects/dotfiles/dreamland/volumeicon_conf ~/.config/volumeicon/volumeicon

ln -sf ~/Projects/dotfiles/dreamland/vimperatorrc_conf ~/.vimperatorrc

sudo ln -sf ~/Projects/dotfiles/dreamland/libinput_conf /etc/X11/xorg.conf.d/50-touchpad.conf

sudo ln -sf ~/Projects/dotfiles/dreamland/virtualbox_conf /etc/modules-load.d/virtualbox.conf

ln -sf ~/Projects/dotfiles/dreamland/asoundrc_conf ~/.asoundrc

ln -sf ~/Projects/dotfiles/dreamland/zshrc_conf ~/.zshrc

ln -sf ~/Projects/dotfiles/dreamland/tmux_conf ~/.tmux.conf

sudo ln -sf ~/Projects/dotfiles/dreamland/bumblebee_nvidia_conf /etc/bumblebee/xorg.conf.nvidia

sudo ln -sf ~/Projects/dotfiles/dreamland/tlp_conf /etc/default/tlp
sudo systemctl enable tlp.service
sudo systemctl enable tlp-sleep.service
sudo systemctl disable systemd-rfkill.service

sudo ln -sf ~/Projects/dotfiles/dreamland/pacman_conf /etc/pacman.conf

mkdir ~/.config/dunst
ln -sf ~/Projects/dotfiles/dreamland/dunst_conf /home/anhtuann/.config/dunst/dunstrc

sudo ln -sf /home/anhtuann/Projects/dotfiles/dreamland/bumblebee_conf /etc/bumblebee/bumblebee.conf

ranger --copy-config=all
ln -sf /home/anhtuann/Projects/dotfiles/dreamland/ranger_rifle_conf /home/anhtuann/.config/ranger/rifle.conf
