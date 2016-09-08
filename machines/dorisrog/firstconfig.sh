git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki
vim +PluginInstall +qall

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
