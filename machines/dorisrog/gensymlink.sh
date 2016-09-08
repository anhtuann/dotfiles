ln -sf ~/Projects/dotfiles/machines/dorisrog/confs/xinitrc_conf ~/.xinitrc
ln -sf ~/Projects/dotfiles/machines/dorisrog/confs/vimrc_conf ~/.vimrc
ln -sf ~/Projects/dotfiles/machines/dorisrog/confs/Xresources_conf ~/.Xresources
ln -sf ~/Projects/dotfiles/machines/dorisrog/confs/i3_conf ~/.config/i3/config
ln -sf ~/Projects/dotfiles/machines/dorisrog/confs/i3status_conf ~/.config/i3status/config
ln -sf ~/Projects/dotfiles/machines/dorisrog/confs/tmux_conf ~/.tmux.conf
ln -sf ~/Projects/dotfiles/machines/dorisrog/confs/dunst_conf ~/.config/dunst/dunstrc
ln -sf ~/Projects/dotfiles/machines/dorisrog/confs/zshrc_conf ~/.zshrc
ln -sf /home/anhtuann/Projects/dotfiles/machines/dorisrog/confs/vimperatorrc_conf ~/.vimperatorrc

sudo ln -sf ~/Projects/dotfiles/machines/dorisrog/confs/pacman_conf /etc/pacman.conf

if ! pacaur -Qi virtualbox-guest-utils > /dev/null 2>&1; then
    echo "We are on a real machine. Symlinking hardware confs files"
    ln -sf ~/Projects/dotfiles/machines/dorisrog/confs/asoundrc_conf ~/.asoundrc
fi
