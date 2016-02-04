pacaur -S --noconfirm zsh
chsh -s /bin/zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ln -sf ~/Projects/dotfiles/dreamland/confs/zshrc_conf ~/.zshrc
