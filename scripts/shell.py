from scripts import tools

#INSTALL
packages = ['zsh']
tools.pacaur(packages)

#CONFIGURATION
tools.bash_cmd(['chsh', '-s', '/bin/zsh'])
with tools.cd('~/.config'):
    tools.git_clone('https://github.com/chriskempson/base16-shell.git')
command = 'sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"'
tools.bash_cmd(command, shell=True)
tools.link_conf('~/Projects/dotfiles/confs/zshrc_conf', '~/.zshrc')
command = '/bin/zsh ~/.config/base16-shell/scripts/base16-3024.sh'
tools.bash_cmd(command, shell=True)
