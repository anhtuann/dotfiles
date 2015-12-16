ln -sf ~/Projects/dotfiles/dreamland/xinitrc_conf ~/.xinitrc
ln -sf ~/Projects/dotfiles/dreamland/vimrc_conf ~/.vimrc

ln -sf ~/Projects/dotfiles/dreamland/bashrc_conf ~/.bashrc
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

ln -sf ~/Projects/dotfiles/dreamland/Xresources_conf ~/.Xresources

mkdir ~/.i3
mkdir -p ~/.config/i3status
ln -sf ~/Projects/dotfiles/dreamland/i3_conf ~/.i3/config
ln -sf ~/Projects/dotfiles/dreamland/i3status_conf ~/.config/i3status/config

mkdir -p ~/.config/volumeicon
ln -sf ~/Projects/dotfiles/dreamland/volumeicon_conf ~/.config/volumeicon/volumeicon

ln -sf ~/Projects/dotfiles/dreamland/vimperatorrc_conf ~/.vimperatorrc

sudo ln -sf /home/anhtuann/Projects/dotfiles/dreamland/virtualbox_conf /etc/modules-load.d/virtualbox.conf

ln -sf ~/Projects/dotfiles/dreamland/asoundrc_conf ~/.asoundrc
