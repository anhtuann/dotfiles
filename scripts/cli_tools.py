import tools

#INSTALLATION
packages = ['unrar',
            'unzip',
            'rsync',
            'ranger',]
tools.pacaur(packages)

#CONFIGURATION
tools.bash_cmd(['ranger', '--copy-config=all'])
with tools.cd('.config/ranger/'):
    tools.bash_cmd(['rm', 'rifle.conf'])
    tools.bash_cmd(['rm', 'rc.conf'])
tools.link_conf('~/Projects/dotfiles/confs/ranger_rifle_conf', '~/.config/ranger/rifle.conf')
tools.link_conf('~/Projects/dotfiles/confs/ranger_rc_conf', '~/.config/ranger/rc.conf')
