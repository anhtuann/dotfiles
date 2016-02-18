git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki
vim +PluginInstall +qall

mkdir ~/.i3
mkdir -p ~/.config/i3status

mkdir -p ~/.config/volumeicon

mkdir ~/.config/dunst

ranger --copy-config=all

if [ $environment == "real" ]; then
    sudo systemctl enable tlp.service
    sudo systemctl enable tlp-sleep.service
    sudo systemctl disable systemd-rfkill.service
fi
