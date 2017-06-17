from scripts import tools

#INSTALL
packages = ['vim',
            'flake8']
tools.pacaur(packages)


#CONFIGURATION
tools.mkdir('~/.vim/bundle')
with tools.cd('~/.vim/bundle'):
    tools.git_clone('https://github.com/VundleVim/Vundle.vim.git', 'Vundle.vim')
tools.link_conf('~/Projects/dotfiles/confs/vimrc_conf', '~/.vimrc')
tools.link_conf('~/Projects/dotfiles/confs/pep8_conf', '~/.config/pep8')
command = 'vim -E -S ~/.vimrc +PluginInstall +qall'
tools.bash_cmd(command, shell=True)
with tools.cd('~/.vim/bundle/YouCompleteMe'):
    command = 'python install.py --system-boost'
    tools.bash_cmd(command.split(' '))
