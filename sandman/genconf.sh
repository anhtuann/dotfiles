ln -sf ~/Projects/dotfiles/sandman/confs/zshrc_conf ~/.zshrc

#vim
ln -sf ~/Projects/dotfiles/sandman/confs/vimrc_conf ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
