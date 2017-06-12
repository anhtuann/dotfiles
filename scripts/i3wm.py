from scripts import tools

#INSTALL
packages = ['i3',
            'rxvt-unicode',
            'rofi',
            'scrot',
            'feh',
            'imagemagick',
            'volumeicon', 
            'dunst',
            'xcompmgr',
            'thunar-git',
            'thunar-volman',
            'thunar-archive-plugin',
            'gvfs', 
            'tumbler',
            'xclip']
tools.pacaur(packages)

with tools.cd('~/Projects/'):
    tools.git_clone('git@anhtuann.com:anhtuann/useful-scripts.git')

#CONFIGURATION
tools.mkdir('~/.config/i3')
tools.mkdir('~/.config/i3status')
tools.mkdir('~/.config/volumeicon')
tools.mkdir('~/.config/dunst')
tools.link_conf('~/Projects/dotfiles/confs/i3_conf','~/.config/i3/config')
tools.link_conf('~/Projects/dotfiles/confs/i3status_conf', '~/.config/i3status/config')
tools.link_conf('~/Projects/dotfiles/confs/Xresources_conf', '~/.Xresources')
tools.link_conf('~/Projects/dotfiles/confs/volumeicon_conf', '~/.config/volumeicon/volumeicon')
tools.link_conf('~/Projects/dotfiles/confs/dunst_conf','~/.config/dunst/dunstrc')
