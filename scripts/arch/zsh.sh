pacaur -S --noconfirm zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ln -sf ~/Projects/dotfiles/machines/$machine/confs/zshrc_conf ~/.zshrc
