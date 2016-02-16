#vim
ln -sf ~/Projects/dotfiles/machines/sandman/confs/vimrc_conf ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

ln -sf ~/Projects/dotfiles/machines/sandman/confs/tmux_conf ~/.tmux.conf

sudo ln -sf ~/Projects/dotfiles/machines/sandman/confs/nginx_conf /etc/nginx/nginx.conf

sudo ln -sf ~/Projects/dotfiles/machines/sandman/confs/phpini_conf /etc/php/php.ini
