import tools

#INSTALLATION
packages = ['unrar',
            'unzip',
            'rsync',
            'ranger',]
tools.pacaur(packages)

#CONFIGURATION
tools.bash_cmd(['mkdir', '-p', '.config/ranger'])
tools.link_conf('~/Projects/dotfiles/machines/dreamland/confs/ranger_rifle_conf', '~/.config/ranger/rifle.conf')
tools.link_conf('~/Projects/dotfiles/machines/dreamland/confs/ranger_rc_conf', '~/.config/ranger/rc.conf')
